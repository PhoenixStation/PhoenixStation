// Cyborg inducer. Uses up the cyborg's internal battery.
// Ported from BlueMoon, original code by FelixRuin (kudos to him)

#define POWER_TRANSFER 5000
#define MINIMAL_CHARGE_TRESHOLD 0.2
#define CHARGE_TRESHOLD 0.2
#define IND_STATUS_IDLE TRUE
#define IND_STATUS_CHARGING FALSE

/obj/item/borg/cyborg_inducer
	name = "modular inducer"
	desc = "A tool for inductively charging internal power cells."
	icon = 'icons/obj/tools.dmi'
	icon_state = "inducer-engi"
	force = 7
	w_class = WEIGHT_CLASS_SMALL

	/// What is this inducer doing now?
	var/status = IND_STATUS_IDLE
	/// Can you use this inducer to charge weapon cells?
	var/can_charge_guns = FALSE
	/// The cyborg's internal cell
	var/obj/item/stock_parts/power_store/cell/internal_cell
	/// This inducer's coefficient
	var/coefficient = 1
	/// Is this inducer currently recharging?
	var/recharging = FALSE

/obj/item/borg/cyborg_inducer/examine(mob/user)
	. = ..()
	internal_cell = get_cell()
	if(internal_cell)
		. += "<span class='notice'>Its display shows: [display_energy(internal_cell.charge)].</span>"
	else
		. += "<span class='notice'>Its display is dark.</span>"


/obj/item/borg/cyborg_inducer/interact_with_atom(atom/interacting_with, mob/living/user, list/modifiers)
	if(!can_be_used(user))
		return NONE
	if(recharge(interacting_with, user))
		return ITEM_INTERACT_BLOCKING
	return NONE

/obj/item/borg/cyborg_inducer/proc/induce(obj/item/stock_parts/power_store/cell/target, coefficient)
	internal_cell = get_cell()
	if(!target || target.charge >= target.maxcharge)
		return
	var/totransfer = min(internal_cell.charge, (POWER_TRANSFER * coefficient), internal_cell.maxcharge * CHARGE_TRESHOLD)
	var/transferred = target.give(totransfer)
	if(transferred > 0)
		internal_cell.use(transferred)
		internal_cell.update_icon()
		target.update_icon()

/obj/item/borg/cyborg_inducer/get_cell()
	var/mob/living/silicon/robot/cyborg = loc
	if(istype(cyborg))
		return cyborg.cell
	return null

/obj/item/borg/cyborg_inducer/proc/can_be_used(mob/user)
	internal_cell = get_cell()
	if(!internal_cell)
		to_chat(user, "<span class='warning'>Unit doesn't have a power cell installed!</span>")
		return FALSE

	if(!internal_cell.charge)
		to_chat(user, "<span class='warning'>Unit's battery is dead!</span>")
		return FALSE
	return TRUE

/obj/item/borg/cyborg_inducer/proc/recharge(atom/movable/this_atom, mob/user)
	if(isturf(this_atom))
		return FALSE
	if(this_atom.get_cell() == get_cell())
		to_chat(user, "<span class='warning'>Error: Power loop detected!</span>")
		return FALSE
	if(status == IND_STATUS_CHARGING)
		return TRUE

	status = IND_STATUS_CHARGING
	internal_cell = get_cell()

	if(this_atom.get_cell())
		if(istype(this_atom, /obj/item/gun/energy) && !can_charge_guns)
			to_chat(user, "<span class='warning'>Error: Unable to inteface with the device.</span>")
			return FALSE
		var/obj/item/stock_parts/power_store/cell/this_cell = this_atom.get_cell()
		var/done_any = FALSE

		if(this_cell.charge >= this_cell.maxcharge)
			to_chat(user, "<span class='notice'>[this_atom] is fully charged!</span>")
			recharging = FALSE
			status = IND_STATUS_IDLE
			return TRUE
		user.visible_message("[user] starts recharging [this_atom] with [src]...","<span class='notice'>You start recharging [this_atom] with [src]...</span>")
		while(this_cell.charge < this_cell.maxcharge)
			if(do_after(user, 10, target = user) && internal_cell.charge && (internal_cell.maxcharge * MINIMAL_CHARGE_TRESHOLD < internal_cell.charge))
				done_any = TRUE
				induce(this_cell, coefficient)
				do_sparks(1, FALSE, this_atom)
				this_atom.update_icon()
			else
				break
		if(done_any)
			user.visible_message("[user] finishes recharging [this_atom].","<span class='notice'>You finish recharging [this_atom].</span>")
		recharging = FALSE
		status = IND_STATUS_IDLE
		return TRUE
	recharging = FALSE
	status = IND_STATUS_IDLE

#undef POWER_TRANSFER
#undef MINIMAL_CHARGE_TRESHOLD
#undef CHARGE_TRESHOLD
#undef IND_STATUS_IDLE
#undef IND_STATUS_CHARGING
