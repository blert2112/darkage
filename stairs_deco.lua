
stairs.register_stair_and_slab("straw", "darkage:straw",
	{snappy=3, flammable=2},
	{"darkage_straw.png"},
	"Straw Stair",
	"Straw Slab",
	default.node_sound_stone_defaults()
)

stairs.register_stair_and_slab("straw_bale", "darkage:straw_bale",
	{snappy=2, flammable=2},
	{"darkage_straw_bale.png"},
	"Straw Bale Stair",
	"Straw Bale Slab",
	default.node_sound_stone_defaults()
)

stairs.register_stair_and_slab("slate_tile", "darkage:slate_tile",
	{cracky=2},
	{"darkage_slate_tile.png"},
	"Slate Tile Stair",
	"Slate Tile Slab",
	default.node_sound_stone_defaults()
)

stairs.register_stair_and_slab("marble_tile", "darkage:marble_tile",
	{cracky=2},
	{"darkage_marble_tile.png"},
	"Marble Tile Stair",
	"Marble Tile Slab",
	default.node_sound_stone_defaults()
)

stairs.register_stair_and_slab("stone_brick", "darkage:stone_brick",
	{cracky=3},
	{"darkage_stone_brick.png"},
	"Stone Brick Stair",
	"Stone Brick Slab",
	default.node_sound_stone_defaults()
)

stairs.register_stair_and_slab("reinforced_chalk", "darkage:reinforced_chalk",
	{cracky=3},
	{"darkage_chalk.png^darkage_reinforce.png"},
	"Reinforced Chalk Stair",
	"Reinforced Chalk Slab",
	default.node_sound_stone_defaults()
)

stairs.register_stair_and_slab("glass", "darkage:glass",
	{snappy=2,cracky=3,oddly_breakable_by_hand=3},
	{"darkage_glass.png"},
	"Medieval Glass Stair",
	"Medieval Glass Slab",
	default.node_sound_stone_defaults()
)

stairs.register_stair_and_slab("glow_glass", "darkage:glow_glass",
	{snappy=2,cracky=3,oddly_breakable_by_hand=3},
	{"darkage_glass.png"},
	"Medieval Glow Glass Stair",
	"Medieval Glow Glass Slab",
	default.node_sound_stone_defaults()
)

stairs.register_stair_and_slab("reinforced_wood", "darkage:reinforced_wood",
	{snappy=2,choppy=3,oddly_breakable_by_hand=3,flammable=3},
	{"default_wood.png^darkage_reinforce.png"},
	"Reinforced Wood Stair",
	"Reinforced Wood Slab",
	default.node_sound_stone_defaults()
)
