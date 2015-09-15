
-- basalt
minetest.register_node("darkage:basalt", {
	description = "Basalt",
	tiles = {"darkage_basalt.png"},
	is_ground_content = true,
	drop = "darkage:basalt_cobble",
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("darkage:basalt_cobble", {
	description = "Basalt Cobble",
	tiles = {"darkage_basalt_cobble.png"},
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("darkage:basalt_brick", {
	description = "Basalt Brick",
	tiles = {"darkage_basalt_brick.png"},
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults()
})
minetest.register_craft({
	output = "darkage:basalt_brick",
	recipe = {
		{"darkage:basalt", "darkage:basalt"},
		{"darkage:basalt", "darkage:basalt"},
	}
})
minetest.register_craft({
	type = "cooking",
	output = "darkage:basalt",
	recipe = "darkage:basalt_cobble",
})

-- chalk
minetest.register_node("darkage:chalk", {
	description = "Chalk",
	tiles = {"darkage_chalk.png"},
	is_ground_content = true,
	drop = "darkage:chalk_powder 4",
	groups = {crumbly=2,cracky=2},
	sounds = default.node_sound_stone_defaults()
})
minetest.register_craftitem("darkage:chalk_powder", {
	description = "Chalk Powder",
	inventory_image = "darkage_chalk_powder.png",
})
minetest.register_craft({
	output = "darkage:chalk_powder 4",
	recipe = {{"darkage:chalk"}}
})
minetest.register_craft({
	output = "darkage:chalk",
	recipe = {
		{"darkage:chalk_powder","darkage:chalk_powder"},
		{"darkage:chalk_powder","darkage:chalk_powder"}
	}
})

-- gneiss
minetest.register_node("darkage:gneiss", {
	description = "Gneiss",
	tiles = {"darkage_gneiss.png"},
	is_ground_content = true,
	groups = {cracky=3},
	drop = "darkage:gneiss_cobble",
	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("darkage:gneiss_cobble", {
	description = "Gneiss Cobble",
	tiles = {"darkage_gneiss_cobble.png"},
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("darkage:gneiss_brick", {
	description = "Gneiss Brick",
	tiles = {"darkage_gneiss_brick.png"},
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults()
})
minetest.register_craft({
	output = "darkage:gneiss_brick",
	recipe = {
		{"darkage:gneiss", "darkage:gneiss"},
		{"darkage:gneiss", "darkage:gneiss"},
	}
})
minetest.register_craft({
	type = "cooking",
	output = "darkage:gneiss",
	recipe = "darkage:gneiss_cobble",
})

-- marble
minetest.register_node("darkage:marble", {
	description = "Marble",
	tiles = {"darkage_marble.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults()
})

-- mud
minetest.register_node("darkage:mud", {
	description = "Mud",
	tiles = {"darkage_mud_top.png", "darkage_mud.png"},
	is_ground_content = true,
	groups = {crumbly=3},
	drop = "darkage:mud_lump 4",
	sounds = default.node_sound_dirt_defaults({
		footstep = ""
	})
})
minetest.register_craftitem("darkage:mud_lump", {
	description = "Mud Lump",
	inventory_image = "darkage_mud_lump.png",
})
minetest.register_craft({
	output = "darkage:mud_lump 4",
	recipe = {{"darkage:mud"}}
})
minetest.register_craft({
	output = "darkage:mud",
	recipe = {
		{"darkage:mud_lump","darkage:mud_lump"},
		{"darkage:mud_lump","darkage:mud_lump"}
	}
})

-- ors
minetest.register_node("darkage:ors", {
	description = "Old Red Sandstone",
	tiles = {"darkage_ors.png"},
	is_ground_content = true,
	drop = "darkage:ors_cobble",
	groups = {crumbly=2,cracky=2},
	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("darkage:ors_cobble", {
	description = "Old Red Sandstone Cobble",
	tiles = {"darkage_ors_cobble.png"},
	groups = {crumbly=2,cracky=2},
	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("darkage:ors_brick", {
	description = "Old Red Sandstone Brick",
	tiles = {"darkage_ors_brick.png"},
	groups = {crumbly=2,cracky=2},
	sounds = default.node_sound_stone_defaults()
})
minetest.register_craft({
	output = "darkage:ors_brick",
	recipe = {
		{"darkage:ors", "darkage:ors"},
		{"darkage:ors", "darkage:ors"},
	}
})
minetest.register_craft({
	type = "cooking",
	output = "darkage:ors",
	recipe = "darkage:ors_cobble",
})

-- schist
minetest.register_node("darkage:schist", {
	description = "Schist",
	tiles = {"darkage_schist.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults()
})

-- serpentine
minetest.register_node("darkage:serpentine", {
	description = "Serpentine",
	tiles = {"darkage_serpentine.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults()
})

-- shale
minetest.register_node("darkage:shale", {
	description = "Shale",
	tiles = {"darkage_shale.png","darkage_shale.png","darkage_shale_side.png"},
	is_ground_content = true,
	groups = {crumbly=2,cracky=2},
	sounds = default.node_sound_stone_defaults()
})

-- silt
minetest.register_node("darkage:silt", {
	description = "Silt",
	tiles = {"darkage_silt.png"},
	is_ground_content = true,
	groups = {crumbly=3},
	drop = "darkage:silt_lump 4",
	sounds = default.node_sound_dirt_defaults({
		footstep = ""
	})
})
minetest.register_craftitem("darkage:silt_lump", {
	description = "Silt Lump",
	inventory_image = "darkage_silt_lump.png",
})
minetest.register_craft({
	output = "darkage:silt_lump 4",
		recipe = {{"darkage:silt"}}
})
minetest.register_craft({
	output = "darkage:silt",
	recipe = {
		{"darkage:silt_lump","darkage:silt_lump"},
		{"darkage:silt_lump","darkage:silt_lump"}
	}
})

-- slate
minetest.register_node("darkage:slate", {
	description = "Slate",
	tiles = {"darkage_slate.png","darkage_slate.png","darkage_slate_side.png"},
	is_ground_content = true,
	drop = "darkage:slate_cobble",
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("darkage:slate_cobble", {
	description = "Slate Cobble",
	tiles = {"darkage_slate_cobble.png"},
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("darkage:slate_brick", {
	description = "Slate Brick",
	tiles = {"darkage_slate_brick.png"},
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults()
})
minetest.register_craft({
	output = "darkage:slate_brick",
	recipe = {
		{"darkage:slate", "darkage:slate"},
		{"darkage:slate", "darkage:slate"}
	}
})
minetest.register_craft({
	type = "cooking",
	output = "darkage:slate",
	recipe = "darkage:slate_cobble"
})
