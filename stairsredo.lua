
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
stairs.register_stair_and_slab("basalt", "darkage:basalt",
	{cracky=3, not_in_creative_inventory=ENABLE_CREATIVE},
	{"darkage_basalt.png"}, "Basalt",
	default.node_sound_stone_defaults()
)
stairs.register_stair_and_slab("basalt_cobble", "darkage:basalt_cobble",
	{cracky=3, not_in_creative_inventory=ENABLE_CREATIVE},
	{"darkage_basalt_cobble.png"}, "Basalt Cobble",
	default.node_sound_stone_defaults()
)
stairs.register_stair_and_slab("basalt_brick", "darkage:basalt_brick",
	{cracky=3, not_in_creative_inventory=ENABLE_CREATIVE},
	{"darkage_basalt_brick.png"}, "Basalt Brick",
	default.node_sound_stone_defaults()
)

-- chalk
stairs.register_stair_and_slab("chalk", "darkage:chalk",
	{cracky=3, not_in_creative_inventory=ENABLE_CREATIVE},
	{"darkage_chalk.png"}, "Chalk Brick",
	default.node_sound_stone_defaults()
)

-- gneiss
stairs.register_stair_and_slab("gneiss", "darkage:gneiss",
	{cracky=3, not_in_creative_inventory=ENABLE_CREATIVE},
	{"darkage_gneiss.png"}, "Gneiss",
	default.node_sound_stone_defaults()
)
stairs.register_stair_and_slab("gneiss_cobble", "darkage:gneiss_cobble",
	{cracky=3, not_in_creative_inventory=ENABLE_CREATIVE},
	{"darkage_gneiss_cobble.png"}, "Gneiss Cobble",
	default.node_sound_stone_defaults()
)
stairs.register_stair_and_slab("gneiss_brick", "darkage:gneiss_brick",
	{cracky=3, not_in_creative_inventory=ENABLE_CREATIVE},
	{"darkage_gneiss_brick.png"}, "Gneiss Brick",
	default.node_sound_stone_defaults()
)

-- marble
stairs.register_stair_and_slab("marble", "darkage:marble",
	{cracky=3, not_in_creative_inventory=ENABLE_CREATIVE},
	{"darkage_marble.png"}, "Marble",
	default.node_sound_stone_defaults()
)

-- ors
stairs.register_stair_and_slab("ors", "darkage:ors",
	{cracky=3, not_in_creative_inventory=ENABLE_CREATIVE},
	{"darkage_ors.png"}, "Old Red Sandstone",
	default.node_sound_stone_defaults()
)
stairs.register_stair_and_slab("ors_cobble", "darkage:ors_cobble",
	{cracky=3, not_in_creative_inventory=ENABLE_CREATIVE},
	{"darkage_ors_cobble.png"}, "Old Red Sandstone Cobble",
	default.node_sound_stone_defaults()
)
stairs.register_stair_and_slab("ors_brick", "darkage:ors_brick",
	{cracky=3, not_in_creative_inventory=ENABLE_CREATIVE},
	{"darkage_ors_brick.png"}, "Old Red Sandstone Brick",
	default.node_sound_stone_defaults()
)

-- schist
stairs.register_stair_and_slab("schist", "darkage:schist",
	{cracky=3, not_in_creative_inventory=ENABLE_CREATIVE},
	{"darkage_schist.png"}, "Schist",
	default.node_sound_stone_defaults()
)

-- serpentine
stairs.register_stair_and_slab("serpentine", "darkage:serpentine",
	{cracky=3, not_in_creative_inventory=ENABLE_CREATIVE},
	{"darkage_serpentine.png"}, "Serpentine",
	default.node_sound_stone_defaults()
)

-- shale
stairs.register_stair_and_slab("shale", "darkage:shale",
	{cracky=3, not_in_creative_inventory=ENABLE_CREATIVE},
	{"darkage_shale.png"}, "Shale",
	default.node_sound_stone_defaults()
)

-- slate
stairs.register_stair_and_slab("slate", "darkage:slate",
	{cracky=3, not_in_creative_inventory=ENABLE_CREATIVE},
	{"darkage_slate.png"}, "Slate",
	default.node_sound_stone_defaults()
)
stairs.register_stair_and_slab("slate_cobble", "darkage:slate_cobble",
	{cracky=3, not_in_creative_inventory=ENABLE_CREATIVE},
	{"darkage_slate_cobble.png"}, "Slate Cobble",
	default.node_sound_stone_defaults()
)
stairs.register_stair_and_slab("slate_brick", "darkage:slate_brick",
	{cracky=3, not_in_creative_inventory=ENABLE_CREATIVE},
	{"darkage_slate_brick.png"}, "Slate Brick",
	default.node_sound_stone_defaults()
)
