
local ENABLE_CREATIVE = 0
local got_setting
got_setting = minetest.setting_getbool("DARKAGE_enable_stairs_in_creative")
if got_setting ~= nil then
	if got_setting == true then 
		ENABLE_CREATIVE = 0
	else
		ENABLE_CREATIVE = 1
	end
end

-- basalt
stairsplus:register_all("darkage", "basalt", "darkage:basalt", {
	description = "Basalt",
	tiles = {"darkage_basalt.png"},
	groups = {cracky=3, not_in_creative_inventory=ENABLE_CREATIVE},
	sounds = default.node_sound_stone_defaults()
})
stairsplus:register_all("darkage", "basalt_cobble", "darkage:basalt_cobble", {
	description = "Basalt Cobble",
	tiles = {"darkage_basalt_cobble.png"},
	groups = {cracky=3, not_in_creative_inventory=ENABLE_CREATIVE},
	sounds = default.node_sound_stone_defaults()
})
stairsplus:register_all("darkage", "basalt_brick", "darkage:basalt_brick", {
	description = "Basalt Brick",
	tiles = {"darkage_basalt_brick.png"},
	groups = {cracky=3, not_in_creative_inventory=ENABLE_CREATIVE},
	sounds = default.node_sound_stone_defaults()
})

-- chalk
stairsplus:register_all("darkage", "chalk", "darkage:chalk", {
	description = "Chalk",
	tiles = {"darkage_chalk.png"},
	groups = {crumbly=2, cracky=2, not_in_creative_inventory=ENABLE_CREATIVE},
	sounds = default.node_sound_stone_defaults()
})

-- gneiss
stairsplus:register_all("darkage", "gneiss", "darkage:gneiss", {
	description = "Gneiss",
	tiles = {"darkage_gneiss.png"},
	groups = {cracky=3, not_in_creative_inventory=ENABLE_CREATIVE},
	sounds = default.node_sound_stone_defaults()
})
stairsplus:register_all("darkage", "gneiss_cobble", "darkage:gneiss_cobble", {
	description = "Gneiss Cobble",
	tiles = {"darkage_gneiss_cobble.png"},
	groups = {cracky=3, not_in_creative_inventory=ENABLE_CREATIVE},
	sounds = default.node_sound_stone_defaults()
})
stairsplus:register_all("darkage", "gneiss_brick", "darkage:gneiss_brick", {
	description = "Gneiss Brick",
	tiles = {"darkage_gneiss_brick.png"},
	groups = {cracky=3, not_in_creative_inventory=ENABLE_CREATIVE},
	sounds = default.node_sound_stone_defaults()
})

-- marble
stairsplus:register_all("darkage", "marble", "darkage:marble", {
	description = "Marble",
	tiles = {"darkage_marble.png"},
	groups = {cracky=2, not_in_creative_inventory=ENABLE_CREATIVE},
	sounds = default.node_sound_stone_defaults()
})

-- ors
stairsplus:register_all("darkage", "ors", "darkage:ors", {
	description = "Old Red Sandstone",
	tiles = {"darkage_ors.png"},
	groups = {crumbly=2, cracky=2, not_in_creative_inventory=ENABLE_CREATIVE},
	sounds = default.node_sound_stone_defaults()
})
stairsplus:register_all("darkage", "ors_cobble", "darkage:ors_cobble", {
	description = "Old Red Sandstone Cobble",
	tiles = {"darkage_ors_cobble.png"},
	groups = {crumbly=2, cracky=2, not_in_creative_inventory=ENABLE_CREATIVE},
	sounds = default.node_sound_stone_defaults()
})
stairsplus:register_all("darkage", "ors_brick", "darkage:ors_brick", {
	description = "Old Red Sandstone Brick",
	tiles = {"darkage_ors_brick.png"},
	groups = {crumbly=2, cracky=2, not_in_creative_inventory=ENABLE_CREATIVE},
	sounds = default.node_sound_stone_defaults()
})

-- shist
stairsplus:register_all("darkage", "schist", "darkage:schist", {
	description = "Schist",
	tiles = {"darkage_schist.png"},
	groups = {cracky=3, not_in_creative_inventory=ENABLE_CREATIVE},
	sounds = default.node_sound_stone_defaults()
})

-- serpentine
stairsplus:register_all("darkage", "serpentine", "darkage:serpentine", {
	description = "Serpentine",
	tiles = {"darkage_serpentine.png"},
	groups = {cracky=3, not_in_creative_inventory=ENABLE_CREATIVE},
	sounds = default.node_sound_stone_defaults()
})

-- shale
stairsplus:register_all("darkage", "shale", "darkage:shale", {
	description = "Shale",
	tiles = {"darkage_shale.png","darkage_shale.png","darkage_shale_side.png"},
	groups = {crumbly=2, cracky=2, not_in_creative_inventory=ENABLE_CREATIVE},
	sounds = default.node_sound_stone_defaults()
})

-- slate
stairsplus:register_all("darkage", "slate", "darkage:slate", {
	description = "Slate",
	tiles = {"darkage_slate.png","darkage_slate.png","darkage_slate_side.png"},
	groups = {cracky=2, not_in_creative_inventory=ENABLE_CREATIVE},
	sounds = default.node_sound_stone_defaults()
})
stairsplus:register_all("darkage", "slate_cobble", "darkage:slate_cobble", {
	description = "Slate Cobble",
	tiles = {"darkage_slate_cobble.png"},
	groups = {cracky=2, not_in_creative_inventory=ENABLE_CREATIVE},
	sounds = default.node_sound_stone_defaults()
})
stairsplus:register_all("darkage", "slate_brick", "darkage:slate_brick", {
	description = "Slate Brick",
	tiles = {"darkage_slate_brick.png"},
	groups = {cracky=2, not_in_creative_inventory=ENABLE_CREATIVE},
	sounds = default.node_sound_stone_defaults()
})
