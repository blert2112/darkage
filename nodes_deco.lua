
-- iron stick
minetest.register_craftitem("darkage:iron_stick", {
	description = "Iron Stick",
	inventory_image = "darkage_iron_stick.png"
})
minetest.register_craft({
	output = "darkage:iron_stick 3",
	recipe = {
		{"default:steel_ingot"},
		{"default:steel_ingot"},
		{"default:steel_ingot"}
	}
})

-- chain
minetest.register_node("darkage:chain", {
	description = "Chain",
	drawtype = "signlike",
	tiles = {"darkage_chain.png"},
	paramtype = "light",
	paramtype2 = "wallmounted",
	walkable = false,
	climbable = true,
	selection_box = {type = "wallmounted"},
	groups = {snappy=1,cracky=2,oddly_breakable_by_hand=2},
	legacy_wallmounted = true
})
minetest.register_craft({ 		
	output = 'darkage:chain 2',	
	recipe = {					
		{'darkage:iron_stick'},		--changed reziep to avoid problems with ironbars - addi
		{'darkage:iron_stick'},	
		{'darkage:iron_stick'}
	}
})

-- box
minetest.register_node('darkage:box', {
	description = "Box",
	tiles = { 'darkage_box_top.png','darkage_box_top.png','darkage_box.png'},
	sunlight_propagates = false,
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = true,
	groups = {snappy = 3},
	sounds = default.node_sound_wood_defaults(),
	on_construct = function(pos)
		local meta = minetest.env:get_meta(pos)
		meta:set_string("formspec",
				"size[8,8]"..
				"list[current_name;main;0,0;8,3;]"..
				"list[current_player;main;0,4;8,4;]")
		meta:set_string("infotext", "Box")
		local inv = meta:get_inventory()
		inv:set_size("main", 16)
	end,
	can_dig = function(pos,player)
		local meta = minetest.env:get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty("main")
	end
})
minetest.register_craft({
	output = 'darkage:box',
	recipe = {
		{'default:wood','','default:wood'},
		{'','',''},
		{'default:wood','','default:wood'}
	}
})

-- wood shelves
minetest.register_node('darkage:wood_shelves', {
	description = "Wooden Shelves",
	tiles = { 'darkage_shelves.png','darkage_shelves.png','darkage_shelves.png',
            'darkage_shelves.png','darkage_shelves.png','darkage_shelves_front.png'},
	sunlight_propagates = false,
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = true,
	groups = {snappy = 3},
	sounds = default.node_sound_wood_defaults(),
	on_construct = function(pos)
		local meta = minetest.env:get_meta(pos)
		meta:set_string("formspec",
				"size[8,10]"..
				"list[context;up;0,0;8,3;]"..
				"list[context;down;0,3;8,3;]"..
				"list[current_player;main;0,6;8,4;]")
		meta:set_string("infotext", "Wooden Shelves")
		local inv = meta:get_inventory()
		inv:set_size("up", 16)
		inv:set_size("down", 16)
	end,
	can_dig = function(pos,player)
		local meta = minetest.env:get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty("shape") and inv:is_empty("out") and inv:is_empty("water")
	end
})
minetest.register_craft({
	output = 'darkage:wood_shelves',
	recipe = {
		{'darkage:box'},
		{'darkage:box'}
	}
})

-- iron bars
minetest.register_node("darkage:iron_bars", {
	description = "Iron Bars",
	drawtype = "glasslike",
	tiles = {"darkage_iron_bars.png"},
	is_ground_content = true,
	paramtype = "light",
	sunlight_propagates = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults()
})
minetest.register_craft({
	output = 'darkage:iron_bars 2',
	recipe = {
		{'darkage:iron_stick','','darkage:iron_stick'},	--changed reziep to avoid problems with 3dfurniture -addi
		{'darkage:iron_stick','','darkage:iron_stick'},
		{'darkage:iron_stick','','darkage:iron_stick'}
	}
})

-- lamp
minetest.register_node("darkage:lamp", {
	description = "Lamp",
	tiles = {"darkage_lamp.png"},
	paramtype = "light",
	sunlight_propagates = true,
	light_source = LIGHT_MAX-1,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3,flammable=1},
	sounds = default.node_sound_glass_defaults()
})
minetest.register_craft({
	output = 'darkage:lamp',
	recipe = {
		{'default:stick','','default:stick'},
		{'','default:torch',''},
		{'default:stick','','default:stick'}
	}
})

-- glass
minetest.register_node("darkage:glass", {
	description = "Medieval Glass",
	drawtype = "glasslike",
	tiles = {"darkage_glass.png"},
	paramtype = "light",
	sunlight_propagates = true,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
	sounds = default.node_sound_glass_defaults()
})
minetest.register_craft({
	output = "darkage:glass 8",
	recipe = {
		{"default:glass", "default:steel_ingot", "default:glass"},
		{"default:steel_ingot", "default:glass", "default:steel_ingot"},
		{"default:glass", "default:steel_ingot", "default:glass"}
	}
})
minetest.register_craft({
	output = "darkage:glass",
	recipe = {{"darkage:glow_glass"}}
})

-- glow glass
minetest.register_node("darkage:glow_glass", {
	description = "Medieval Glow Glass",
	drawtype = "glasslike",
	tiles = {"darkage_glass.png"},
	paramtype = "light",
	light_source = 14,
	sunlight_propagates = true,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
	sounds = default.node_sound_glass_defaults()
})
minetest.register_craft({
	output = "darkage:glow_glass",
	recipe = {
		{"darkage:glass"},
		{"default:torch"}
	}
})

-- iron grille
minetest.register_node("darkage:iron_grille", {
	description = "Iron Grille",
	drawtype = "glasslike",
	tiles = {"darkage_iron_grille.png"},
	is_ground_content = true,
	paramtype = "light",
	sunlight_propagates = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults()
})
minetest.register_craft({
	output = 'darkage:iron_grille 3',
	recipe = {
		{'','darkage:iron_bars',''},
		{'darkage:iron_bars','','darkage:iron_bars'},
		{'','darkage:iron_bars',''}
	}
})

-- wood bars
minetest.register_node("darkage:wood_bars", {
	description = "Wooden Bars",
	drawtype = "glasslike",
	tiles = {"darkage_wood_bars.png"},
	is_ground_content = true,
	paramtype = "light",
	sunlight_propagates = true,
	groups = {snappy=1,choppy=2},
	sounds = default.node_sound_stone_defaults()
})
minetest.register_craft({
	output = 'darkage:wood_bars 2',
	recipe = {
		{'default:stick','','default:stick'},
		{'default:stick','','default:stick'},
		{'default:stick','','default:stick'}
	}
})

-- wood grille
minetest.register_node("darkage:wood_grille", {
	description = "Wooden Grille",
	drawtype = "glasslike",
	tiles = {"darkage_wood_grille.png"},
	is_ground_content = true,
	paramtype = "light",
	sunlight_propagates = true,
	groups = {snappy=1,choppy=2},
	sounds = default.node_sound_stone_defaults()
})
minetest.register_craft({
	output = 'darkage:wood_grille 3',
	recipe = {
		{'','darkage:wood_bars',''},
		{'darkage:wood_bars','','darkage:wood_bars'},
		{'','darkage:wood_bars',''}
	}
})

-- wood frame
minetest.register_node("darkage:wood_frame", {
	description = "Wooden Frame",
	drawtype = "glasslike",
	tiles = {"darkage_wood_frame.png"},
	is_ground_content = true,
	paramtype = "light",
	sunlight_propagates = true,
	groups = {snappy=1,choppy=2},
	sounds = default.node_sound_stone_defaults()
})
minetest.register_craft({
	output = 'darkage:wood_frame',
	recipe = {
		{'default:stick','','default:stick'},
		{'','default:glass',''},
		{'default:stick','','default:stick'}
	}
})

-- reinforced wood
minetest.register_node("darkage:reinforced_wood", {
	description = "Reinforced Wood",
	tiles = {"default_wood.png^darkage_reinforce.png"},
	groups = {snappy=2,choppy=3,oddly_breakable_by_hand=3,flammable=3},
	sounds = default.node_sound_wood_defaults()
})
minetest.register_craft({
	output = "darkage:reinforced_wood",
	recipe = {
		{"group:stick","","group:stick"},
		{"","default:wood",""},
		{"group:stick","","group:stick"}
	}
})

-- reinforced wood left
minetest.register_node("darkage:reinforced_wood_left", {
	description = "Reinforced Wood Left",
	tiles = {"darkage_reinforced_wood_left.png"},
	groups = {snappy=2,choppy=3,oddly_breakable_by_hand=3,flammable=3},
	sounds = default.node_sound_wood_defaults()
})
minetest.register_craft({
	output = "darkage:reinforced_wood_left",
	recipe = {{"default:stick","darkage:reinforced_wood",""}}
})

-- reinforced wood right
minetest.register_node("darkage:reinforced_wood_right", {
	description = "Reinforced Wood Right",
	tiles = {"darkage_reinforced_wood_right.png"},
	groups = {snappy=2,choppy=3,oddly_breakable_by_hand=3,flammable=3},
	sounds = default.node_sound_wood_defaults()
})
minetest.register_craft({
	output = "darkage:reinforced_wood_right",
	recipe = {{"","darkage:reinforced_wood","default:stick"}}
})

-- straw
minetest.register_node("darkage:straw", {
	description = "Straw",
	tiles = {"darkage_straw.png"},
	groups = {snappy=3, flammable=2},
	sounds = default.node_sound_leaves_defaults()
})
minetest.register_craft({
	output = "darkage:straw 2",
	recipe = {
		{"default:dry_shrub","default:dry_shrub"},
		{"default:dry_shrub","default:dry_shrub"}
	}
})
minetest.register_craft({
	output = "darkage:straw 2",
	recipe = {
		{"darkage:dry_leaves","darkage:dry_leaves"},
		{"darkage:dry_leaves","darkage:dry_leaves"}
	}
})

-- straw bale
minetest.register_node("darkage:straw_bale", {
	description = "Straw Bale",
	tiles = {"darkage_straw_bale.png"},
	drop = "darkage:straw 4",
	groups = {snappy=2, flammable=2},
	sounds = default.node_sound_leaves_defaults()
})
minetest.register_craft({
	output = "darkage:straw_bale",
	recipe = {
		{"darkage:straw","darkage:straw"},
		{"darkage:straw","darkage:straw"}
	}
})

-- slate tile
minetest.register_node("darkage:slate_tile", {
	description = "Slate Tile",
	tiles = {"darkage_slate_tile.png"},
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults()
})
minetest.register_craft({
	output = "darkage:slate_tile 4",
	recipe = {
		{"darkage:slate","darkage:slate"},
		{"darkage:slate","darkage:slate"},
		{"darkage:adobe","darkage:adobe"}
	}
})

-- marble tile
minetest.register_node("darkage:marble_tile", {
	description = "Marble Tile",
	tiles = {"darkage_marble_tile.png"},
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults()
})
minetest.register_craft({
	output = "darkage:marble_tile 4",
	recipe = {
		{"darkage:marble","darkage:marble"},
		{"darkage:marble","darkage:marble"},
		{"darkage:adobe","darkage:adobe"}
	}
})

-- reinforced chalk
minetest.register_node("darkage:reinforced_chalk", {
	description = "Reinforced Chalk",
	tiles = {"darkage_chalk.png^darkage_reinforce.png"},
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults()
})
minetest.register_craft({
	output = "darkage:reinforced_chalk",
	recipe = {
		{"group:stick","","group:stick"},
		{"","darkage:chalk",""},
		{"group:stick","","group:stick"}
	}
})

-- adobe
minetest.register_node("darkage:adobe", {
	description = "Adobe",
	tiles = {"darkage_adobe.png"},
	groups = {crumbly=3},
	sounds = default.node_sound_sand_defaults()
})
minetest.register_craft({
	output = "darkage:adobe 4",
	recipe = {
		{"default:sand","default:sand"},
		{"default:clay_lump","darkage:straw"}
	}
})

-- cobble with plaster
minetest.register_node("darkage:cobble_with_plaster", {
	description = "Cobblestone With Plaster",
	tiles = {"darkage_cobble_with_plaster_D.png", "darkage_cobble_with_plaster_B.png", "darkage_cobble_with_plaster_C.png",
		"darkage_cobble_with_plaster_A.png", "default_cobble.png", "darkage_chalk.png"},
	paramtype2 = "facedir",
	drop = "default:cobble",
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults()
})
minetest.register_craft({
	output = "darkage:cobble_with_plaster 2",
	recipe = {
		{"default:cobble","darkage:chalk_powder"},
		{"default:cobble","darkage:chalk_powder"}
	}
})
minetest.register_craft({
	output = "darkage:cobble_with_plaster 2",
	recipe = {
		{"darkage:chalk_powder","default:cobble"},
		{"darkage:chalk_powder","default:cobble"}
	}
})

-- dark dirt
minetest.register_node("darkage:darkdirt", {
	description = "Dark Dirt",
	tiles = {"darkage_darkdirt.png"},
	groups = {crumbly=2},
	sounds = default.node_sound_dirt_defaults()
})
minetest.register_craft({
	output = "darkage:darkdirt 4",
	recipe = {
		{"darkage:mud","darkage:silt"},
		{"default:dirt","default:dirt"}
	}
})

-- dry leaves
minetest.register_node("darkage:dry_leaves", {
	description = "Dry Leaves",
	tiles = {"darkage_dry_leaves.png"},
	paramtype = "light",
	groups = {snappy=3, flammable=2},
	sounds = default.node_sound_leaves_defaults()
})
minetest.register_craft({
	type = "cooking",
	output = "darkage:dry_leaves",
	recipe = "default:leaves"
})

-- stone brick
minetest.register_node("darkage:stone_brick", {
	description = "Stone Brick",
	tiles = {"darkage_stone_brick.png"},
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults()
})
minetest.register_craft({
	output = "darkage:stone_brick 9",
	recipe = {
		{"default:cobble","default:cobble","default:cobble"},
		{"default:cobble","default:cobble","default:cobble"},
		{"default:cobble","default:cobble","default:cobble"}
	}
})