
-- straw
stairsplus:register_all("darkage", "straw", "darkage:straw", {
	description = "Straw",
	tiles = {"darkage_straw.png"},
	groups = {snappy=3, flammable=2},
	sounds = default.node_sound_leaves_defaults()
})

-- straw_bale
	stairsplus:register_all("darkage", "straw_bale", "darkage:straw_bale", {
	description = "Straw Bale",
	tiles = {"darkage_straw_bale.png"},
	groups = {snappy=2, flammable=2},
	sounds = default.node_sound_leaves_defaults()
})

-- slate tile
stairsplus:register_all("darkage", "slate_tile", "darkage:slate_tile", {
	description = "Slate Tale",
	tiles = {"darkage_slate_tile.png"},
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults()
})

-- marble tile
stairsplus:register_all("darkage", "marble_tile", "darkage:marble_tile", {
	description = "Marble Tile",
	tiles = {"darkage_marble_tile.png"},
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults()
})

-- stone brick
stairsplus:register_all("darkage", "stone_brick", "darkage:stone_brick", {
	description = "Stone Brick",
	tiles = {"darkage_stone_brick.png"},
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults()
})

-- reinforced chalk
stairsplus:register_all("darkage", "reinforced_chalk", "darkage:reinforced_chalk", {
	description = "Reinforced Chalk",
	tiles = {"darkage_chalk.png^darkage_reinforce.png"},
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults()
})

-- glass
stairsplus:register_all("darkage", "glass", "darkage:glass", {
	description = "Medieval Glass",
	tiles = {"darkage_glass.png"},
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
	sounds = default.node_sound_stone_defaults()
})

-- glow glass
stairsplus:register_all("darkage", "glow_glass", "darkage:glow_glass", {
	description = "Medieval Glow Glass",
	tiles = {"darkage_glass.png"},
	paramtype = "light",
	light_source = 18,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
	sounds = default.node_sound_stone_defaults()
})

-- reinforced wood
stairsplus:register_all("darkage", "reinforced_wood", "darkage:reinforced_wood", {
	description = "Reinforced Wood",
	tiles = {"default_wood.png^darkage_reinforce.png"},
	groups = {snappy=2,choppy=3,oddly_breakable_by_hand=3,flammable=3},
	sounds = default.node_sound_stone_defaults()
})
