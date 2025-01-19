
/**
 * Saves custom emotes to character slot
 * Returns TRUE on success, FALSE on failure
 */
/datum/preferences/proc/save_custom_emotes()
	if(!path)
		return FALSE

	var/tree_key = "character[default_slot]"
	if(!(tree_key in savefile.get_entry()))
		return FALSE

	var/save_data = savefile.get_entry(tree_key)
	save_data["custom_emote_panel"] = custom_emote_panel
	savefile.save()
	return TRUE
