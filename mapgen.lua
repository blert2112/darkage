--[[
	this file generates:
		darkage:mud			darkage:silt		darkage:chalk
		darkage:ors			darkage:shale		darkage:slate
		darkage:schist		darkage:basalt		darkage:marble
		darkage:serpentine	darkage:gneiss
--]]

local claylike = {
	{name="mud",	wherein="dirt", minY=-1, maxY=3},
	{name="silt",	wherein="sand", minY=-1, maxY=3}
}

local ores = {
	{name="chalk",			wherein="stone",		thickness=3,	minY=-20,		maxY=50,	threshold=1.75},
	{name="ors",			wherein="desert_stone",	thickness=3,	minY=-200,		maxY=500,	threshold=1.50},
	{name="shale",			wherein="stone",		thickness=4,	minY=-50,		maxY=20,	threshold=1.50},
	{name="slate",			wherein="stone",		thickness=3,	minY=-500,		maxY=0,		threshold=1.50},
	{name="schist",			wherein="stone",		thickness=3,	minY=-31000,	maxY=-10,	threshold=1.75},
	{name="basalt",			wherein="stone",		thickness=4,	minY=-31000,	maxY=-50,	threshold=0.75},
	{name="marble",			wherein="stone",		thickness=5,	minY=-31000,	maxY=-75,	threshold=2.00},
	{name="serpentine",		wherein="stone",		thickness=6,	minY=-31000,	maxY=-350,	threshold=2.50},
	{name="gneiss",			wherein="stone",		thickness=3,	minY=-31000,	maxY=-250,	threshold=1.75}
}

local ovule, claylike_count
minetest.register_on_mapgen_init(function(mapgen_params)
	ovule = mapgen_params.seed
end)

for i,data in ipairs(claylike) do
	minetest.register_ore({
		ore_type = "sheet",
		ore = "darkage:"..data.name,
		wherein = "default:"..data.wherein,
		column_height_min = 1,
		column_height_max = 2,
		column_midpoint_factor = 0.5,
		height_min = data.minY,
		height_max = data.maxY,
		noise_threshhold = 0.50,
		noise_params = {offset=0, scale=1, spread={x=20, y=20, z=10}, seed=ovule+i, octaves=2, persist=0.8}
	})
	claylike_count = i
end

for i,data in ipairs(ores) do
	if data.thickness-2 < 1 then
		data.thickness = 3
	end
	minetest.register_ore({
		ore_type = "sheet",
		ore = "darkage:"..data.name,
		wherein = "default:"..data.wherein,
		column_height_min = data.thickness-2,
		column_height_max = data.thickness,
		column_midpoint_factor = 0.5,
		height_min = data.minY,
		height_max = data.maxY,
		noise_threshhold = data.threshold,
		noise_params = {offset=0, scale=2, spread={x=20, y=20, z=10}, seed=ovule+claylike_count+i, octaves=2, persist=0.8}
	})
end
