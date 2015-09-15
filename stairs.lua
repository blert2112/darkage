
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
	{"darkage_basalt.png"},
	"Basalt Stair",
	"Basalt Slab",
	default.node_sound_stone_defaults()
)
stairs.register_stair_and_slab("basalt_cobble", "darkage:basalt_cobble",
	{cracky=3, not_in_creative_inventory=ENABLE_CREATIVE},
	{"darkage_basalt_cobble.png"},
	"Basalt Cobble Stair",
	"Basalt Cobble Slab",
	default.node_sound_stone_defaults()
)
stairs.register_stair_and_slab("basalt_brick", "darkage:basalt_brick",
	{cracky=3, not_in_creative_inventory=ENABLE_CREATIVE},
	{"darkage_basalt_brick.png"},
	"Basalt Brick Stair",
	"Basalt Brick Slab",
	default.node_sound_stone_defaults()
)

-- chalk
stairs.register_stair_and_slab("chalk", "darkage:chalk",
	{crumbly=2, cracky=2, not_in_creative_inventory=ENABLE_CREATIVE},
	{"darkage_chalk.png"},
	"Chalk Stair",
	"Chalk Slab",
	default.node_sound_stone_defaults()
)

-- gneiss
stairs.register_stair_and_slab("gneiss", "darkage:gneiss",
	{cracky=3, not_in_creative_inventory=ENABLE_CREATIVE},
	{"darkage_gneiss.png"},
	"Gneiss Stair",
	"Gneiss Slab",
	default.node_sound_stone_defaults()
)
stairs.register_stair_and_slab("gneiss_cobble", "darkage:gneiss_cobble",
	{crumbly=2, cracky=2, not_in_creative_inventory=ENABLE_CREATIVE},
	{"darkage_gneiss_cobble.png"},
	"Gneiss Cobble Stair",
	"Gneiss Cobble Slab",
	default.node_sound_stone_defaults()
)
stairs.register_stair_and_slab("gneiss_brick", "darkage:gneiss_brick",
	{crumbly=2, cracky=2, not_in_creative_inventory=ENABLE_CREATIVE},
	{"darkage_gneiss_brick.png"},
	"Gneiss Brick Stair",
	"Gneiss Brick Slab",
	default.node_sound_stone_defaults()
)

-- marble
stairs.register_stair_and_slab("marble", "darkage:marble",
	{cracky=3, not_in_creative_inventory=ENABLE_CREATIVE},
	{"darkage_marble.png"},
	"Marble Stair",
	"Marble Slab",
	default.node_sound_stone_defaults()
)

-- ors
stairs.register_stair_and_slab("ors", "darkage:ors",
	{crumbly=2, cracky=2, not_in_creative_inventory=ENABLE_CREATIVE},
	{"darkage_ors.png"},
	"Old Red Sandstone Stair",
	"Old Red Sandstone Slab",
	default.node_sound_stone_defaults()
)
stairs.register_stair_and_slab("ors_cobble", "darkage:ors_cobble",
	{crumbly=2, cracky=2, not_in_creative_inventory=ENABLE_CREATIVE},
	{"darkage_ors_cobble.png"},
	"Old Red Sandstone Cobble Stair",
	"Old Red Sandstone Cobble Slab",
	default.node_sound_stone_defaults()
)
stairs.register_stair_and_slab("ors_brick", "darkage:ors_brick",
	{crumbly=2, cracky=2, not_in_creative_inventory=ENABLE_CREATIVE},
	{"darkage_ors_brick.png"},
	"Old Red Sandstone Brick Stair",
	"Old Red Sandstone Brick Slab",
	default.node_sound_stone_defaults()
)

-- schist
stairs.register_stair_and_slab("schist", "darkage:schist",
	{cracky=3, not_in_creative_inventory=ENABLE_CREATIVE},
	{"darkage_schist.png"},
	"Schist Stair",
	"Schist Slab",
	default.node_sound_stone_defaults()
)

-- serpentine
stairs.register_stair_and_slab("serpentine", "darkage:serpentine",
	{cracky=3, not_in_creative_inventory=ENABLE_CREATIVE},
	{"darkage_serpentine.png"},
	"Serpentine Stair",
	"Serpentine Slab",
	default.node_sound_stone_defaults()
)

-- shale
stairs.register_stair_and_slab("shale", "darkage:shale",
	{cracky=3, not_in_creative_inventory=ENABLE_CREATIVE},
	{"darkage_shale.png"},
	"Shale Stair",
	"Shale Slab",
	default.node_sound_stone_defaults()
)

-- slate
stairs.register_stair_and_slab("slate", "darkage:slate",
	{cracky=2, not_in_creative_inventory=ENABLE_CREATIVE},
	{"darkage_slate.png"},
	"Slate Stair",
	"Slate Slab",
	default.node_sound_stone_defaults()
)
stairs.register_stair_and_slab("slate_cobble", "darkage:slate_cobble",
	{cracky=2, not_in_creative_inventory=ENABLE_CREATIVE},
	{"darkage_slate_cobble.png"},
	"Slate Cobble Stair",
	"Slate Cobble Slab",
	default.node_sound_stone_defaults()
)
stairs.register_stair_and_slab("slate_brick", "darkage:slate_brick",
	{cracky=2, not_in_creative_inventory=ENABLE_CREATIVE},
	{"darkage_slate_brick.png"},
	"Slate Brick Stair",
	"Slate Brick Slab",
	default.node_sound_stone_defaults()
)
