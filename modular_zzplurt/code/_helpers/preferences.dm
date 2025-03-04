#define check_preference(A, preference) (A.client.prefs.read_preference(preference))

/proc/check_vore_preference(mob/target, datum/vore_pref/toggle/preference)
	var/datum/vore_preferences/vore_prefs = target.get_vore_prefs()
	if(!vore_prefs)
		return
	return vore_prefs.read_preference(preference)
