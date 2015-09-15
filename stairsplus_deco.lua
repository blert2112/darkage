
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

-- straw
stairsplus:register_all("darkage", "straw", "darkage:straw", {
	description = "Straw",
	tiles = {"darkage_straw.png"},
	groups = {snappy=3, flammable=2, not_in_creative_inventory=ENABLE_CREATIVE},
	sounds = default.node_sound_leaves_defaults()
})

-- straw_bale
	stairsplus:register_all("darkage", "straw_bale", "darkage:straw_bale", {
	description = "Straw Bale",
	tiles = {"darkage_straw_bale.png"},
	groups = {snappy=2, flammable=2, not_in_creative_inventory=ENABLE_CREATIVE},
	sounds = default.node_sound_leaves_defaults()
})

-- slate tile
stairsplus:register_all("darkage", "slate_tile", "darkage:slate_tile", {
	description = "Slate Tale",
	tiles = {"darkage_slate_tile.png"},
	groups = {cracky=2, not_in_creative_inventory=ENABLE_CREATIVE},
	sounds = default.node_sound_stone_defaults()
})

-- marble tile
stairsplus:register_all("darkage", "marble_tile", "darkage:marble_tile", {
	description = "Marble Tile",
	tiles = {"darkage_marble_tile.png"},
	groups = {cracky=2, not_in_creative_inventory=ENABLE_CREATIVE},
	sounds = default.node_sound_stone_defaults()
})

-- stone brick
stairsplus:register_all("darkage", "stone_brick", "darkage:stone_brick", {
	description = "Stone Brick",
	tiles = {"darkage_stone_brick.png"},
	groups = {cracky=3, not_in_creative_inventory=ENABLE_CREATIVE},
	sounds = default.node_sound_stone_defaults()
})

-- reinforced chalk
stairsplus:register_all("darkage", "reinforced_chalk", "darkage:reinforced_chalk", {
	description = "Reinforced Chalk",
	tiles = {"darkage_chalk.png^darkage_reinforce.png"},
	groups = {cracky=3, not_in_creative_inventory=ENABLE_CREATIVE},
	sounds = default.node_sound_stone_defaults()
})

-- glass
stairsplus:register_all("darkage", "glass", "darkage:glass", {
	description = "Medieval Glass",
	tiles = {"darkage_glass.png"},
	groups = {snappy=2, cracky=3, oddly_breakable_by_hand=3, not_in_creative_inventory=ENABLE_CREATIVE},
	sounds = default.node_sound_glass_defaults()
})

-- glow glass
stairsplus:register_all("darkage", "glow_glass", "darkage:glow_glass", {
	description = "Medieval Glow Glass",
	tiles = {"darkage_glass.png"},
	paramtype = "light",
	light_source = 18,
	groups = {snappy=2 ,cracky=3, oddly_breakable_by_hand=3, not_in_creative_inventory=ENABLE_CREATIVE},
	sounds = default.node_sound_glass_defaults()
})

-- reinforced wood
stairsplus:register_all("darkage", "reinforced_wood", "darkage:reinforced_wood", {
	description = "Reinforced Wood",
	tiles = {"default_wood.png^darkage_reinforce.png"},
	groups = {snappy=2 ,choppy=3, oddly_breakable_by_hand=3, flammable=3, not_in_creative_inventory=ENABLE_CREATIVE},
	sounds = default.node_sound_wood_defaults()
})

-- adobe
stairsplus:register_all("darkage", "adobe", "darkage:adobe", {
	description = "Adobe",
	tiles = {"darkage_adobe.png"},
	groups = {crumbly=3, not_in_creative_inventory=ENABLE_CREATIVE},
	sounds = default.node_sound_sand_defaults()
})

-- cobble with plaster
stairsplus:register_all("darkage", "cobble_with_plaster", "darkage:cobble_with_plaster", {
	description = "Cobble with Plaster",
	tiles = {"darkage_cobble_with_plaster_D.png", "darkage_cobble_with_plaster_B.png", "darkage_cobble_with_plaster_C.png",
		"darkage_cobble_with_plaster_A.png", "default_cobble.png", "darkage_chalk.png"},
	groups = {cracky=3, not_in_creative_inventory=ENABLE_CREATIVE},
	sounds = default.node_sound_stone_defaults()
})

-- dark dirt
stairsplus:register_all("darkage", "darkdirt", "darkage:darkdirt", {
	description = "Dark Dirt",
	tiles = {"darkage_darkdirt.png"},
	groups = {crumbly=2, not_in_creative_inventory=ENABLE_CREATIVE},
	sounds = default.node_sound_dirt_defaults()
})

-- dry leaves
stairsplus:register_all("darkage", "dry_leaves", "darkage:dry_leaves", {
	description = "Dry Leaves",
	tiles = {"darkage_dry_leaves.png"},
	groups = {snappy=3, flammable=2, not_in_creative_inventory=ENABLE_CREATIVE},
	sounds = default.node_sound_leaves_defaults()
})
