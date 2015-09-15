
local ENABLE_MAPGEN = true
local ENABLE_DECO_NODES = true
local ENABLE_STAIRS = true
local ENABLE_ALIASES = false

local got_setting

got_setting = minetest.setting_getbool("DARKAGE_enable_mapgen")
if got_setting ~= nil then
	ENABLE_MAPGEN = got_setting
end
got_setting = minetest.setting_getbool("DARKAGE_enable_deco_nodes")
if got_setting ~= nil then
	ENABLE_DECO_NODES = got_setting
end
got_setting = minetest.setting_getbool("DARKAGE_enable_stairs")
if got_setting ~= nil then
	ENABLE_STAIRS = got_setting
end
got_setting = minetest.setting_getbool("DARKAGE_enable_aliases")
if got_setting ~= nil then
	ENABLE_ALIASES = got_setting
end

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
if ENABLE_ALIASES then dofile(path.."/aliases.lua") end
