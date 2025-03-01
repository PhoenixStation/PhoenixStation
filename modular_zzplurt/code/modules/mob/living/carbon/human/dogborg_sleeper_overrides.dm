/mob/living/carbon/human/calculate_affecting_pressure(pressure)
	if(istype(loc, /obj/item/dogborg/sleeper))
		return ONE_ATMOSPHERE
	return ..()

/mob/living/carbon/human/get_heat_protection(temperature)
	if(istype(loc, /obj/item/dogborg/sleeper))
		return FIRE_IMMUNITY_MAX_TEMP_PROTECT
	return ..()

/mob/living/carbon/human/get_cold_protection(temperature)
	if(istype(loc, /obj/item/dogborg/sleeper))
		return FIRE_IMMUNITY_MAX_TEMP_PROTECT
	return ..()

/mob/living/carbon/breathe(seconds_per_tick, times_fired)
	// You don't need to breath inside of a medihound sleeper... apparently.
	if(istype(loc, /obj/item/dogborg/sleeper))
		return
	return ..()

/mob/living/silicon/robot/unequip_module_from_slot(obj/item/item_module, module_num)
	// We need to eject the sleeper's occupant when we unequip it
	if(istype(item_module, /obj/item/dogborg/sleeper))
		sleeper_garbage = FALSE
		sleeper_occupant = FALSE
		update_icons()
		var/obj/item/dogborg/sleeper/sleeper_moodule = item_module
		sleeper_moodule.go_out()
	return ..()
