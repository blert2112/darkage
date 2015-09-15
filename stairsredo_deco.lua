
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

stairs.register_stair_and_slab("straw", "darkage:straw",
	{snappy=3, flammable=2, not_in_creative_inventory=ENABLE_CREATIVE},
	{"darkage_straw.png"}, "Straw",
	default.node_sound_leaves_defaults()
)

stairs.register_stair_and_slab("straw_bale", "darkage:straw_bale",
	{snappy=2, flammable=2, not_in_creative_inventory=ENABLE_CREATIVE},
	{"darkage_straw_bale.png"}, "Straw Bale",
	default.node_sound_leaves_defaults()
)

stairs.register_stair_and_slab("slate_tile", "darkage:slate_tile",
	{cracky=2, not_in_creative_inventory=ENABLE_CREATIVE},
	{"darkage_slate_tile.png"}, "Slate Tile",
	default.node_sound_stone_defaults()
)

stairs.register_stair_and_slab("marble_tile", "darkage:marble_tile",
	{cracky=2, not_in_creative_inventory=ENABLE_CREATIVE},
	{"darkage_marble_tile.png"}, "Marble Tile",
	default.node_sound_stone_defaults()
)

stairs.register_stair_and_slab("stone_brick", "darkage:stone_brick",
	{cracky=3, not_in_creative_inventory=ENABLE_CREATIVE},
	{"darkage_stone_brick.png"}, "Stone Brick",
	default.node_sound_stone_defaults()
)

stairs.register_stair_and_slab("reinforced_chalk", "darkage:reinforced_chalk",
	{cracky=3, not_in_creative_inventory=ENABLE_CREATIVE},
	{"darkage_chalk.png^darkage_reinforce.png"}, "Reinforced Chalk",
	default.node_sound_stone_defaults()
)

stairs.register_stair_and_slab("glass", "darkage:glass",
	{snappy=2, cracky=3, oddly_breakable_by_hand=3, not_in_creative_inventory=ENABLE_CREATIVE},
	{"darkage_glass.png"}, "Medieval Glass",
	default.node_sound_glass_defaults()
)

stairs.register_stair_and_slab("glow_glass", "darkage:glow_glass",
	{snappy=2, cracky=3, oddly_breakable_by_hand=3, not_in_creative_inventory=ENABLE_CREATIVE},
	{"darkage_glass.png"}, "Medieval Glow Glass",
	default.node_sound_glass_defaults()
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
	{cracky=3, not_in_creative_inventory=ENABLE_CREATIVE},
	{"default_wood.png^darkage_reinforce.png"}, "Reinforced Wood",
	default.node_sound_wood_defaults()
)

stairs.register_stair_and_slab("adobe", "darkage:adobe",
	{crumbly=3, not_in_creative_inventory=ENABLE_CREATIVE},
	{"darkage_adobe.png"}, "Adobe",
	default.node_sound_sand_defaults()
)

stairs.register_stair_and_slab("cobble_with_plaster", "darkage:cobble_with_plaster",
	{cracky=3, not_in_creative_inventory=ENABLE_CREATIVE},
	{"darkage_cobble_with_plaster_D.png", "darkage_cobble_with_plaster_B.png", "darkage_cobble_with_plaster_C.png",
		"darkage_cobble_with_plaster_A.png", "default_cobble.png", "darkage_chalk.png"},
	"Cobble with Plaster",
	default.node_sound_stone_defaults()
)

stairs.register_stair_and_slab("darkdirt", "darkage:darkdirt",
	{crumbly=2, not_in_creative_inventory=ENABLE_CREATIVE},
	{"darkage_darkdirt.png"}, "Dark Dirt",
	default.node_sound_dirt_defaults()
)

stairs.register_stair_and_slab("dry_leaves", "darkage:dry_leaves",
	{snappy=3, flammable=2, not_in_creative_inventory=ENABLE_CREATIVE},
	{"darkage_dry_leaves.png"}, "Dry Leaves",
	default.node_sound_leaves_defaults()
)
