--[[
	this file generates:

		darkage:mud			darkage:silt		darkage:chalk
		darkage:ors			darkage:shale		darkage:slate
		darkage:schist		darkage:basalt		darkage:marble
		darkage:serpentine	darkage:gneiss
	__________________________________________

	register_ore specifics:

		clust_scarcity		: not used for "sheet"
		clust_num_ores		: not used for "sheet"
		clust_size			: relative thickness of the sheet
		height_min			: generate at, minimum height
		height_max			: generate at, maximum height
		noise_threshhold	: noise "cut-off" (horizontal) to generate, -3 to 3,
								-3: generate all,
								3: generate nearly nothing
								I'm using this as a type of "rarity"
		noise_params		: offset: still not sure.
							: scale: how can I put this... how "wavy" it is.
								0 gives a flat sheet,
								positive numbers give the result in the pics that show the bottom indented,
								negative numbers give those bulges at the bottom.
								The higher (or lower in the case of negatives) pronouce this effect.
							: spread: sheet size and shape, you can make some funky shapes with this,
								increase y beyond x,z and you get sheets streched out along the in-world z-axis (not a typo),
									try {x=20, y=100, z=20}
								increase x beyond y,z and you get sheets streched out along the in-world x-axis,
								increasing z doesn't seem to do much but one wouldn't expect it to in this case,
									perlin noise z translates to in-game y,
									possibly contain to z depending on clust_size and scale.
								this can look a little messed up if you go too big, you can end up with square sheets.
							: octaves: more octaves = more detail,
								more than 2 seem about usless to me considering more octaves = more CPU used.
							: persist: 0-? (I think), seems to make very subtle changes to the noise
								by smoothing out the noise (lower) or crazing it up (higher),
								negative numbers work too but seem to show the same result as their positive counterparts.
	__________________________________________

	old generate funtion description:

		generate_claylike(c_id, vm_data, vm_area, minp, maxp, seed, chance, minh, maxh, dirt)
			generate_claylike(c_mud, vm_data, vm_area, minp, maxp, seed+1, 4, 0, 2, 1)
			generate_claylike(c_silt, vm_data, vm_area, minp, maxp, seed+2, 4, -1, 1, 0)
		generate_stratus(c_id, wherein, ceilin, vm_data, vm_area, minp, maxp, seed, stratus_chance, radius, radius_y, deep, height_min, height_max)
			generate_stratus(c_chalk, {c_air}, {c_stone,c_air,c_water}, vm_data, vm_area, minp, maxp, seed+3, 4, 25, 8, 0, -20, 50)
			generate_stratus(c_ors, {c_air}, {c_stone,c_air,c_water}, vm_data, vm_area, minp, maxp, seed+4, 4, 25, 7, 50, -200, 500)
			generate_stratus(c_shale, {c_air}, {c_stone,c_air,c_water}, vm_data, vm_area, minp, maxp, seed+5, 4, 23, 7, 50, -50, 20)
			generate_stratus(c_slate, {c_air}, {c_stone,c_air,c_water}, vm_data, vm_area, minp, maxp, seed+6, 6, 23, 5, 50, -500, 0)
			generate_stratus(c_schist, {c_air}, {c_stone,c_air,c_water}, vm_data, vm_area, minp, maxp, seed+7, 6, 19, 6, 50, -31000, -10)
			generate_stratus(c_basalt, {c_air}, {c_stone,c_air,c_water}, vm_data, vm_area, minp, maxp, seed+8, 5, 20, 5, 20, -31000, -50)
			generate_stratus(c_marble, {c_air}, {c_stone,c_air,c_water}, vm_data, vm_area, minp, maxp, seed+9, 4, 25, 6, 50, -31000, -75)
			generate_stratus(c_serpentine, {c_air}, {c_stone,c_air,c_water}, vm_data, vm_area, minp, maxp, seed+10, 4, 28, 8, 50, -31000, -350)
			generate_stratus(c_gniess, {c_air}, {c_stone,c_air,c_water}, vm_data, vm_area, minp, maxp, seed+11, 4, 15, 5, 50, -31000, -250)
	__________________________________________

	data translations to register_ore from old funtions

		clust_size: thickness = radius_y-1
		spread: x = radius, y = radius, z = radius_y*2

--]]

local ores = {
	{name="mud",			wherein="dirt",			thickness=3,	minY=-1,		maxY=2,		threshold=0.25,	scale=1,	spread={x=15, y=15, z=9}},
	{name="silt",			wherein="sand",			thickness=3,	minY=-2,		maxY=1,		threshold=0.25,	scale=1,	spread={x=15, y=15, z=9}},
	{name="chalk",			wherein="stone",		thickness=7,	minY=-20,		maxY=50,	threshold=1.50,	scale=2,	spread={x=25, y=25, z=16}},
	{name="ors",			wherein="desert_stone",	thickness=6,	minY=-200,		maxY=500,	threshold=1.50,	scale=2,	spread={x=25, y=25, z=14}},
	{name="shale",			wherein="stone",		thickness=6,	minY=-50,		maxY=20,	threshold=1.50,	scale=2,	spread={x=23, y=23, z=14}},
	{name="slate",			wherein="stone",		thickness=4,	minY=-500,		maxY=0,		threshold=1.50,	scale=2,	spread={x=23, y=23, z=10}},
	{name="schist",			wherein="stone",		thickness=5,	minY=-31000,	maxY=-10,	threshold=1.75,	scale=2,	spread={x=19, y=19, z=12}},
	{name="basalt",			wherein="stone",		thickness=4,	minY=-31000,	maxY=-50,	threshold=0.75,	scale=2,	spread={x=20, y=20, z=10}},
	{name="marble",			wherein="stone",		thickness=5,	minY=-31000,	maxY=-75,	threshold=2.00,	scale=2,	spread={x=25, y=25, z=12}},
	{name="serpentine",		wherein="stone",		thickness=7,	minY=-31000,	maxY=-350,	threshold=2.50,	scale=2,	spread={x=28, y=28, z=16}},
	{name="gneiss",			wherein="stone",		thickness=4,	minY=-31000,	maxY=-250,	threshold=1.75,	scale=2,	spread={x=15, y=15, z=10}}
}

local ovule
minetest.register_on_mapgen_init(function(mapgen_params)
	ovule = mapgen_params.seed
end)

for i,data in ipairs(ores) do
	minetest.register_ore({
		ore_type = "sheet",
		ore = "darkage:"..data.name,
		wherein = "default:"..data.wherein,
		clust_size = data.thickness,
		height_min = data.minY,
		height_max = data.maxY,
		noise_threshhold = data.threshold,
		noise_params = {offset=0, scale=data.scale, spread=data.spread, seed=ovule+i, octaves=2, persist=0.8}
	})
end
