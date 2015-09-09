
stairs.register_stair_and_slab("straw", "darkage:straw",
	{cracky=3}, {"darkage_straw.png"}, "Straw",
	default.node_sound_stone_defaults()
)

stairs.register_stair_and_slab("straw_bale", "darkage:straw_bale",
	{cracky=3}, {"darkage_straw_bale.png"}, "Straw Bale",
	default.node_sound_stone_defaults()
)

stairs.register_stair_and_slab("slate_tile", "darkage:slate_tile",
	{cracky=3}, {"darkage_slate_tile.png"}, "Slate Tile",
	default.node_sound_stone_defaults()
)

stairs.register_stair_and_slab("marble_tile", "darkage:marble_tile",
	{cracky=3}, {"darkage_marble_tile.png"}, "Marble Tile",
	default.node_sound_stone_defaults()
)

stairs.register_stair_and_slab("stone_brick", "darkage:stone_brick",
	{cracky=3}, {"darkage_stone_brick.png"}, "Stone Brick",
	default.node_sound_stone_defaults()
)

stairs.register_stair_and_slab("reinforced_chalk", "darkage:reinforced_chalk",
	{cracky=3}, {"darkage_chalk.png^darkage_reinforce.png"}, "Reinforced Chalk",
	default.node_sound_stone_defaults()
)

stairs.register_stair_and_slab("glass", "darkage:glass",
	{cracky=3}, {"darkage_glass.png"}, "Medieval Glass",
	default.node_sound_stone_defaults()
)

stairs.register_stair_and_slab("glow_glass", "darkage:glow_glass",
	{cracky=3}, {"darkage_glass.png"}, "Medieval Glow Glass",
	default.node_sound_stone_defaults()
)
minetest.override_item("stairs:stair_glow_glass", {
	use_texture_alpha = true,
	light_source = 14
})
minetest.override_item("stairs:slab_glow_glass", {
	use_texture_alpha = true,
	light_source = 14
})
minetest.override_item("stairs:corner_glow_glass", {
	use_texture_alpha = true,
	light_source = 14
})
minetest.override_item("stairs:invcorner_glow_glass", {
	use_texture_alpha = true,
	light_source = 14
})

stairs.register_stair_and_slab("reinforced_wood", "darkage:reinforced_wood",
	{cracky=3}, {"default_wood.png^darkage_reinforce.png"}, "Reinforced Wood",
	default.node_sound_stone_defaults()
)
