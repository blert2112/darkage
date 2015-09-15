#DarkAge MOD for MINETEST
Original mod by Master Gollum 
Modified by addi and CraigyDavi
Modified again by blert2112
_______________________________________________________________

###Configuration
Add the following to minetest.conf:

DARKAGE_enable_mapgen = true
DARKAGE_enable_deco_nodes = true
DARKAGE_enable_stairs = true
DARKAGE_enable_aliases = false
DARKAGE_enable_stairs_in_creative = true

If you leave these out of minetest.conf default values will be assumed.
The default values are as listed above.
_______________________________________________________________

###Description
MapGen nodes
------------
basalt*				gneiss*				ors*
slate*				chalk*				marble*
schist*				serpentine*			shale*
mud					silt

Deco nodes
----------
iron_stick					iron_bars
iron_grille					chain
wood_bars					wood_grille
wood_frame					wood_shelves
reinforced_wood(**)
reinforced_wood_left		reinforced_wood_right
box
lamp
glass(**)					glow_glass(**)
straw(**)					straw_bale(**)
slate_tile(**)				marble_tile(**)
reinforced_chalk(**)		adobe(**)
cobble_with_plaster(**)		stone_brick(**)
darkdirt(**)				dry_leaves(**)

(**)Stairs
----------
supports: Stairs(from MT_Game), Stairs_Redo, StairsPlus
_______________________________________________________________

###ToDo
* make sure all those damn aliases are correct
_______________________________________________________________

###Release Notes
Version 2.0.2
* minor fixes

Version 2.0.1
* updated mapgen to new register_ore configuration
	- requires minetest build of master dated no earlier than 9/13/2015

Version 2.0
* updated mapgen to register_ore
* fixed registration with Moreblocks/StairsPlus
* added support for Stairs-Redo
* added many more types of stairs
* reorganized code
_______________________________________________________________	 
	 
###License:
Sourcecode: WTFPL (see below)
Graphics: WTFPL (see below)

---

         DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
                    Version 2, December 2004

 Copyright (C) 2004 Sam Hocevar <sam@hocevar.net>

 Everyone is permitted to copy and distribute verbatim or modified
 copies of this license document, and changing it is allowed as long
 as the name is changed.

            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION

  0. You just DO WHAT THE FUCK YOU WANT TO.