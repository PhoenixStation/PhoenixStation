/**
 * Maximum number of custom emotes that can be saved per character
 */
#define TGUI_PANEL_MAX_EMOTES 30

/datum/tgui_panel
	/// Static list of all available emotes
	var/static/list/all_emotes

/**
 * Initialize list of all available emotes with their keys
 * Called on New()
 */
/datum/tgui_panel/proc/populate_all_emotes_list()
	all_emotes = list()
	for(var/path in subtypesof(/datum/emote))
		var/datum/emote/E = new path()
		if(E.key)
			all_emotes[E.key] = E

/datum/tgui_panel/New(client/client)
	. = ..()
	populate_all_emotes_list()

/**
 * Creates a new custom emote entry
 *
 * Arguments:
 * * emote_key - The key of the emote to add
 * * emote_name - The display name for the emote
 *
 * Returns TRUE on success, FALSE on failure
 */
/datum/tgui_panel/proc/emotes_create(emote_key, emote_name)
	if (length(client.prefs.custom_emote_panel) > TGUI_PANEL_MAX_EMOTES)
		to_chat(client, span_warning("Maximum number of emotes reached: [TGUI_PANEL_MAX_EMOTES]"))
		return FALSE

	client.prefs.custom_emote_panel[emote_key] = emote_name
	client.prefs.save_custom_emotes()
	return TRUE

/**
 * Removes an existing custom emote entry
 *
 * Arguments:
 * * emote_key - The key of the emote to remove
 * * old_emote_name - The current display name of the emote
 *
 * Returns TRUE on success, FALSE on cancellation
 */
/datum/tgui_panel/proc/emotes_remove(emote_key, old_emote_name)
	var/confirmation = tgui_alert(client.mob, "Are you sure you want to remove emote \"[old_emote_name]\" ([emote_key])?", "Confirmation", list("Remove", "Cancel"))
	if (confirmation != "Remove")
		return FALSE

	client.prefs.custom_emote_panel.Remove(emote_key)
	client.prefs.save_custom_emotes()
	return TRUE

/**
 * Renames an existing custom emote entry
 *
 * Arguments:
 * * emote_key - The key of the emote to rename
 * * old_emote_name - The current display name of the emote
 *
 * Returns TRUE on success, FALSE on cancellation
 */
/datum/tgui_panel/proc/emotes_rename(emote_key, old_emote_name)
	var/emote_name = tgui_input_text(client.mob, "Choose new name for emote [emote_key]:", "Emote Name", old_emote_name, 32)
	if (!emote_name)
		return FALSE

	client.prefs.custom_emote_panel[emote_key] = emote_name
	client.prefs.save_custom_emotes()
	return TRUE

/**
 * Sends the current list of custom emotes to the UI
 */
/datum/tgui_panel/proc/emotes_send_list()
	if(!client?.prefs)
		return
	var/list/payload = client.prefs.custom_emote_panel
	if(!payload)
		payload = list()
		client.prefs.custom_emote_panel = payload
	window.send_message("emotes/setList", payload)

/datum/tgui_panel/on_message(type, payload)
	. = ..()

	if (!client?.prefs)
		return

	if (. && type == "ready")
		emotes_send_list()

	if (.)
		return

	switch (type)
		if ("emotes/execute")
			if (!islist(payload))
				return

			var/emote_key = payload["key"]
			if (!emote_key || !istext(emote_key) || !length(emote_key))
				return

			// Validate emote exists in user's panel to prevent JS injection
			if (isnull(client.prefs.custom_emote_panel[emote_key]))
				to_chat(client, span_warning("Emote [emote_key] not found in your panel!"))
				return FALSE

			if (isliving(client?.mob))
				var/mob/living/L = client.mob
				L.emote(emote_key)

			return TRUE

		if ("emotes/create")
			if (length(client.prefs.custom_emote_panel) > TGUI_PANEL_MAX_EMOTES)
				to_chat(client, span_warning("Maximum number of emotes reached: [TGUI_PANEL_MAX_EMOTES]"))
				return FALSE

			var/emote_key = tgui_input_list(client.mob, "Which emote to add to panel?", "Choose Emote", all_emotes - client.prefs.custom_emote_panel)
			if (!emote_key)
				to_chat(client, span_warning("Emote addition cancelled."))
				return

			if (!(emote_key in all_emotes))
				to_chat(client, span_warning("Emote [emote_key] doesn't exist!"))
				return

			var/emote_name = tgui_input_text(client.mob, "What name should emote [emote_key] have in panel?", "Emote Name", emote_key, 32)
			if (!emote_name)
				to_chat(client, span_warning("Invalid emote name!"))
				return

			if(emotes_create(emote_key, emote_name))
				emotes_send_list()
			return TRUE

		if ("emotes/contextAction")
			if (!islist(payload))
				return

			var/emote_key = payload["key"]
			if (!emote_key || !istext(emote_key) || !length(emote_key))
				return

			var/old_emote_name = client.prefs.custom_emote_panel[emote_key]
			if (isnull(old_emote_name))
				to_chat(client, span_warning("Emote [emote_key] not found in your panel!"))
				return FALSE

			var/action = tgui_alert(client.mob, "What would you like to do with emote \"[old_emote_name]\" ([emote_key])?", "Choose Action", list("Edit", "Remove"))

			switch (action)
				if ("Remove")
					if (emotes_remove(emote_key, old_emote_name))
						emotes_send_list()
				if ("Edit")
					if (emotes_rename(emote_key, old_emote_name))
						emotes_send_list()

			return TRUE

#undef TGUI_PANEL_MAX_EMOTES
