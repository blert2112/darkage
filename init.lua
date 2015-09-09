local ENABLE_MAPGEN = true
local ENABLE_DECO_NODES = true
local ENABLE_STAIRS = true

-- end config

local path = minetest.get_modpath("darkage")

dofile(path.."/nodes.lua")
if ENABLE_MAPGEN then dofile(path.."/mapgen.lua") end
if ENABLE_DECO_NODES then dofile(path.."/nodes_deco.lua") end
if ENABLE_STAIRS then
	if stairsplus then
		dofile(path.."/stairsplus.lua")
		if ENABLE_DECO_NODES then dofile(path.."/stairsplus_deco.lua") end
	else
		if stairs then
			if stairs.mod == "redo" then
				dofile(path.."/stairsredo.lua")
				if ENABLE_DECO_NODES then dofile(path.."/stairsredo_deco.lua") end
			else
				dofile(path.."/stairs.lua")
				if ENABLE_DECO_NODES then dofile(path.."/stairs_deco.lua") end
			end
		end
	end
end
dofile(path.."/aliases.lua")
