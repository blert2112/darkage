--[[
	This file generates:
	darkage:mud
	darkage:silt
	darkage:chalk
	darkage:ors
	darkage:shale
	darkage:slate
	darkage:schist
	darkage:basalt
	darkage:marble
	darkage:serpentine
	darkage:gneiss
--]]

local get_c_id = minetest.get_content_id

local c_air = get_c_id("air")
local c_water = get_c_id("default:water_source")
local c_stone = get_c_id("default:stone")
local c_sand = get_c_id("default:sand")
local c_dirt = get_c_id("default:dirt")
local c_dwg = get_c_id("default:dirt_with_grass")
local c_gniess = get_c_id("darkage:gneiss")
local c_serpentine = get_c_id("darkage:serpentine")
local c_marble = get_c_id("darkage:marble")
local c_basalt = get_c_id("darkage:basalt")
local c_schist = get_c_id("darkage:schist")
local c_slate = get_c_id("darkage:slate")
local c_shale = get_c_id("darkage:shale")
local c_ors = get_c_id("darkage:ors")
local c_chalk = get_c_id("darkage:chalk")
local c_silt = get_c_id("darkage:silt")
local c_mud = get_c_id("darkage:mud")

local function generate_stratus(c_id, wherein, ceilin, vm_data, vm_area, minp, maxp, seed, stratus_chance, radius, radius_y, deep, height_min, height_max)
	local changed = false
	if maxp.y < height_min or minp.y > height_max then
		return changed
	end
	local stratus_per_volume = 1
	local area = 45
	local y_min = math.max(minp.y, height_min)
	local y_max = math.min(maxp.y, height_max)
	local volume = ((maxp.x-minp.x+1)/area)*((y_max-y_min+1)/area)*((maxp.z-minp.z+1)/area)
	local pr = PseudoRandom(seed)
	local blocks = math.floor(stratus_per_volume*volume)
--	print("  <<"..minetest.get_name_from_content_id(c_id)..">>");
	if blocks == 0 then
		blocks = 1
	end
--	print("    blocks: "..blocks.." in vol: "..volume.." ("..maxp.x-minp.x+1 ..","..y_max-y_min+1 ..","..maxp.z-minp.z+1 ..")")
	for i=1,blocks do
		local x = pr:next(1,stratus_chance)
		if x == 1 then
			local y0=y_max-radius_y+1
			if y0 < y_min then
				y0=y_min
			else
				y0=pr:next(y_min, y0)
			end
			local x0 = maxp.x-radius+1
			if x0 < minp.x then
				x0 = minp.x
			else
				x0 = pr:next(minp.x, x0)
			end
			local z0 = maxp.z-radius+1
			if z0 < minp.z then
				x0 = minp.z
			else
				z0 = pr:next(minp.z, z0)
			end
			local p0 = {x=x0, y=y0, z=z0}
			local n = vm_data[vm_area:indexp(p0)]
			local i = 0
			x = 0
			for k, v in ipairs(ceilin) do
				if n == v then
					x = 1
					break
				end
			end
			if x == 1 then
				for y1=y0-1,y_min,-1 do
					p0.y=y1
					n = vm_data[vm_area:indexp(p0)]
					x = 0
					for k, v in ipairs(wherein) do
						if n == v then
							x = 1
							break
						end
					end
					if x == 1 then
						y0=y1-deep
						if y0 < y_min then
							y0 = y_min
						end
						break
					end
				end
				local rx=pr:next(radius/2,radius)+1
				local rz=pr:next(radius/2,radius)+1
				local ry=pr:next(radius_y/2,radius_y)+1
				for x1=0,rx do
					rz = rz + 3 - pr:next(1,6)
					if rz < 1 then
						rz = 1
					end
					for z1=pr:next(1,3),rz do
						local ry0=ry+ pr:next(1,3)
						for y1=pr:next(1,3),ry0 do
							local x2 = x0+x1
							local y2 = y0+y1
							local z2 = z0+z1
							local p2 = {x=x2, y=y2, z=z2}
							n = vm_data[vm_area:indexp(p2)]
							x = 0
							for k, v in ipairs(wherein) do
								if n == v then
									x = 1
									break
								end
							end
							if x == 1 then
								vm_data[vm_area:indexp(p2)] = c_id
								changed = true
								i = i +1
							end
						end
					end
				end
--				print("    generated "..i.." blocks in ("..x0..","..y0..","..z0..")")
			end
		end
	end
	return changed
end

local function generate_claylike(c_id, vm_data, vm_area, minp, maxp, seed, chance, minh, maxh, dirt)
	local changed = false
	if maxp.y >= maxh+1 and minp.y <= minh-1 then
		local pr = PseudoRandom(seed)
		local divlen = 4
		local divs = (maxp.x-minp.x)/divlen+1;
		for yy=minh,maxh do
			local x = pr:next(1,chance)
			if x == 1 then
				for divx=0+1,divs-1-1 do
					for divz=0+1,divs-1-1 do
						local cx = minp.x + math.floor((divx+0.5)*divlen)
						local cz = minp.z + math.floor((divz+0.5)*divlen)
						local up = vm_data[vm_area:index(cx, yy, cz)]
						local down = vm_data[vm_area:index(cx, yy-1, cz)]
						if ( up == c_water or up == c_air ) and ( down == c_sand or (dirt == 1 and (down == c_dirt or down == c_dwg ))) then
							local is_shallow = true
							local num_water_around = 0
							if vm_data[vm_area:index(cx-divlen*2, yy, cz)] == c_water then
								num_water_around = num_water_around + 1
							end
							if vm_data[vm_area:index(cx+divlen*2, yy, cz)] == c_water then
								num_water_around = num_water_around + 1
							end
							if vm_data[vm_area:index(cx, yy, cz-divlen*2)] == c_water then
								num_water_around = num_water_around + 1
							end
							if vm_data[vm_area:index(cx, yy, cz+divlen*2)] == c_water then
								num_water_around = num_water_around + 1
							end
							if num_water_around >= 3 then
								is_shallow = false
							end	
							if is_shallow then
								for x1=-divlen,divlen do
									for z1=-divlen,divlen do
										local p={x=cx+x1,y=yy-1,z=cz+z1}
										down = vm_data[vm_area:indexp(p)]
										if down == c_sand or (dirt == 1 and (down == c_dirt or down == c_dwg)) then
											vm_data[vm_area:indexp(p)] = c_id
											changed = true
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end
	return changed
end


minetest.register_on_generated(function(minp, maxp, seed)
--	local t0 = os.clock()
	local vm, emin, emax = minetest.get_mapgen_object("voxelmanip")
	local vm_data = vm:get_data()
	local vm_area = VoxelArea:new({MinEdge = emin, MaxEdge = emax})
	local vm_changed = false
--	local t1 = os.clock()
	--if generate_claylike(c_mud, vm_data, vm_area, minp, maxp, seed+1, 4, 0, 2, 0)
	--or generate_claylike(c_silt, vm_data, vm_area, minp, maxp, seed+2, 4, -1, 1, 1)
	if generate_stratus(c_chalk, {c_air}, {c_stone,c_air,c_water}, vm_data, vm_area, minp, maxp, seed+3, 4, 25, 8, 0, 0, 70)
		then vm_changed = true end
	if generate_stratus(c_ors, {c_air}, {c_stone,c_air,c_water}, vm_data, vm_area, minp, maxp, seed+4, 4, 25, 7, 50, 0, 700)
		then vm_changed = true end
	if generate_stratus(c_shale, {c_air}, {c_stone,c_air,c_water}, vm_data, vm_area, minp, maxp, seed+5, 4, 23, 7, 50, 0, 70)
		then vm_changed = true end
	if generate_stratus(c_slate, {c_air}, {c_stone,c_air,c_water}, vm_data, vm_area, minp, maxp, seed+6, 6, 23, 5, 50, 0, 500)
		then vm_changed = true end
	if generate_stratus(c_schist, {c_air}, {c_stone,c_air,c_water}, vm_data, vm_area, minp, maxp, seed+7, 6, 19, 6, 50, 10, 31000)
		then vm_changed = true end
	if generate_stratus(c_basalt, {c_air}, {c_stone,c_air,c_water}, vm_data, vm_area, minp, maxp, seed+8, 5, 20, 5, 20, 50, 31000)
		then vm_changed = true end
	if generate_stratus(c_marble, {c_air}, {c_stone,c_air,c_water}, vm_data, vm_area, minp, maxp, seed+9, 4, 25, 6, 50, 75, 31000)
		then vm_changed = true end
	if generate_stratus(c_serpentine, {c_air}, {c_stone,c_air,c_water}, vm_data, vm_area, minp, maxp, seed+10, 4, 28, 8, 50, 350, 31000)
		then vm_changed = true end
	if generate_stratus(c_gniess, {c_air}, {c_stone,c_air,c_water}, vm_data, vm_area, minp, maxp, seed+11, 4, 15, 5, 50, 250, 31000)
		then vm_changed = true end
--	print("DARKAGE: time taken minus VM transfer : "..os.clock() - t1)
	if vm_changed then
		vm:set_data(vm_data)
		vm:write_to_map()
	end
--	print("DARKAGE: total time taken : "..os.clock() - t0)
end)

--[[
	if generate_stratus(c_chalk, {c_air}, {c_stone,c_air,c_water}, vm_data, vm_area, minp, maxp, seed+3, 4, 25, 8, 0, -20,  50)
	or generate_stratus(c_ors, {c_air}, {c_stone,c_air,c_water}, vm_data, vm_area, minp, maxp, seed+4, 4, 25, 7, 50, -200,  500)
	or generate_stratus(c_shale, {c_air}, {c_stone,c_air,c_water}, vm_data, vm_area, minp, maxp, seed+5, 4, 23, 7, 50, -50,  20)
	or generate_stratus(c_slate, {c_air}, {c_stone,c_air,c_water}, vm_data, vm_area, minp, maxp, seed+6, 6, 23, 5, 50, -500, 0)
	or generate_stratus(c_schist, {c_air}, {c_stone,c_air,c_water}, vm_data, vm_area, minp, maxp, seed+7, 6, 19, 6, 50, -31000, -10)
	or generate_stratus(c_basalt, {c_air}, {c_stone,c_air,c_water}, vm_data, vm_area, minp, maxp, seed+8, 5, 20, 5, 20, -31000, -50)
	or generate_stratus(c_marble, {c_air}, {c_stone,c_air,c_water}, vm_data, vm_area, minp, maxp, seed+9, 4, 25, 6, 50, -31000,  -75)
	or generate_stratus(c_serpentine, {c_air}, {c_stone,c_air,c_water}, vm_data, vm_area, minp, maxp, seed+10, 4, 28, 8, 50, -31000,  -350)
	or generate_stratus(c_gniess, {c_air}, {c_stone,c_air,c_water}, vm_data, vm_area, minp, maxp, seed+11, 4, 15, 5, 50, -31000, -250)
]]

