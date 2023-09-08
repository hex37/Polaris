/datum/material/plastic
	name = "plastic"
	stack_type = /obj/item/stack/material/plastic
	flags = MATERIAL_BRITTLE
	icon_base = "solid"
	icon_reinf = "reinf_over"
	icon_colour = "#CCCCCC"
	hardness = 10
	weight = 12
	protectiveness = 5 // 20%
	conductive = 0
	conductivity = 2 // For the sake of material armor diversity, we're gonna pretend this plastic is a good insulator.
	melting_point = T0C+371 //assuming heat resistant plastic
	stack_origin_tech = list(TECH_MATERIAL = 3)

/datum/material/plastic/generate_recipes()
	..()
	recipes += list(
		new /datum/stack_recipe("plastic crate", /obj/structure/closet/crate/plastic, 10, one_per_turf = 1, on_floor = 1, pass_stack_color = TRUE, recycle_material = "[name]"),
		new /datum/stack_recipe("plastic bag", /obj/item/storage/bag/plasticbag, 3, on_floor = 1, pass_stack_color = TRUE, recycle_material = "[name]"),
		new /datum/stack_recipe("blood pack", /obj/item/reagent_containers/blood/empty, 4, on_floor = 0, pass_stack_color = TRUE, recycle_material = "[name]"),
		new /datum/stack_recipe("reagent dispenser cartridge (large)", /obj/item/reagent_containers/chem_disp_cartridge,        5, on_floor=0, pass_stack_color = TRUE, recycle_material = "[name]"), // 500u
		new /datum/stack_recipe("reagent dispenser cartridge (med)",   /obj/item/reagent_containers/chem_disp_cartridge/medium, 3, on_floor=0, pass_stack_color = TRUE, recycle_material = "[name]"), // 250u
		new /datum/stack_recipe("reagent dispenser cartridge (small)", /obj/item/reagent_containers/chem_disp_cartridge/small,  1, on_floor=0, pass_stack_color = TRUE, recycle_material = "[name]"), // 100u
		new /datum/stack_recipe("white floor tile", /obj/item/stack/tile/floor/white, 1, 4, 20, pass_stack_color = TRUE, recycle_material = "[name]"),
		new /datum/stack_recipe("freezer floor tile", /obj/item/stack/tile/floor/freezer, 1, 4, 20, pass_stack_color = TRUE, recycle_material = "[name]"),
		new /datum/stack_recipe("shower curtain", /obj/structure/curtain, 4, time = 15, one_per_turf = 1, on_floor = 1, pass_stack_color = TRUE, recycle_material = "[name]"),
		new /datum/stack_recipe("plastic flaps", /obj/structure/plasticflaps, 4, time = 25, one_per_turf = 1, on_floor = 1, pass_stack_color = TRUE, recycle_material = "[name]"),
		new /datum/stack_recipe("water-cooler", /obj/structure/reagent_dispensers/water_cooler, 4, time = 10, one_per_turf = 1, on_floor = 1, pass_stack_color = TRUE, recycle_material = "[name]"),
		new /datum/stack_recipe("lampshade", /obj/item/lampshade, 1, time = 1, pass_stack_color = TRUE, recycle_material = "[name]"),
		new /datum/stack_recipe("plastic net", /obj/item/material/fishing_net, 25, time = 1 MINUTE, pass_stack_color = TRUE, recycle_material = "[name]"),
		new /datum/stack_recipe("plastic fishtank", /obj/item/glass_jar/fish/plastic, 2, time = 30 SECONDS, recycle_material = "[name]"),
		new /datum/stack_recipe("reagent tubing", /obj/item/stack/hose, 1, 4, 20, pass_stack_color = TRUE, recycle_material = "[name]"),
		new /datum/stack_recipe("playing chip", /obj/item/poker_chip/c100, 1, 100, 20, pass_stack_color = TRUE, recycle_material = "[name]")
	)

/datum/material/cardboard
	name = "cardboard"
	stack_type = /obj/item/stack/material/cardboard
	flags = MATERIAL_BRITTLE
	integrity = 10
	icon_base = "solid"
	icon_reinf = "reinf_over"
	icon_colour = "#AAAAAA"
	hardness = 1
	weight = 1
	protectiveness = 0 // 0%
	conductive = 0
	ignition_point = T0C+232 //"the temperature at which book-paper catches fire, and burns." close enough
	melting_point = T0C+232 //temperature at which cardboard walls would be destroyed
	stack_origin_tech = list(TECH_MATERIAL = 1)
	door_icon_base = "wood"
	destruction_desc = "crumples"
	radiation_resistance = 1
	pass_stack_colors = TRUE

/datum/material/cardboard/generate_recipes()
	..()
	recipes += list(
		new /datum/stack_recipe("box", /obj/item/storage/box, pass_stack_color = TRUE, recycle_material = "[name]"),
		new /datum/stack_recipe("donut box", /obj/item/storage/box/donut/empty, pass_stack_color = TRUE, recycle_material = "[name]"),
		new /datum/stack_recipe("egg box", /obj/item/storage/fancy/egg_box, pass_stack_color = TRUE, recycle_material = "[name]"),
		new /datum/stack_recipe("light tubes box", /obj/item/storage/box/lights/tubes, pass_stack_color = TRUE, recycle_material = "[name]"),
		new /datum/stack_recipe("light bulbs box", /obj/item/storage/box/lights/bulbs, pass_stack_color = TRUE, recycle_material = "[name]"),
		new /datum/stack_recipe("mouse traps box", /obj/item/storage/box/mousetraps, pass_stack_color = TRUE, recycle_material = "[name]"),
		new /datum/stack_recipe("cardborg suit", /obj/item/clothing/suit/costume/cardborg, 3, pass_stack_color = TRUE, recycle_material = "[name]"),
		new /datum/stack_recipe("cardborg helmet", /obj/item/clothing/head/collectable/cardborg, pass_stack_color = TRUE, recycle_material = "[name]"),
		new /datum/stack_recipe("pizza box", /obj/item/pizzabox, pass_stack_color = TRUE, recycle_material = "[name]"),
		new /datum/stack_recipe_list("folders",list(
			new /datum/stack_recipe("blue folder", /obj/item/folder/blue, recycle_material = "[name]"),
			new /datum/stack_recipe("grey folder", /obj/item/folder, recycle_material = "[name]"),
			new /datum/stack_recipe("red folder", /obj/item/folder/red, recycle_material = "[name]"),
			new /datum/stack_recipe("white folder", /obj/item/folder/white, recycle_material = "[name]"),
			new /datum/stack_recipe("yellow folder", /obj/item/folder/yellow, recycle_material = "[name]")
		))
	)

/datum/material/toy_foam
	name = "foam"
	display_name = "foam"
	use_name = "foam"
	flags = MATERIAL_PADDING
	ignition_point = T0C+232
	melting_point = T0C+300
	icon_colour = "#ff9900"
	hardness = 1
	weight = 1
	protectiveness = 0 // 0%
	conductive = 0
