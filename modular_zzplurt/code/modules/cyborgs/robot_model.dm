#define ICON_PATH './modular_zzplurt/icons/mob/robot/robots.dmi'
#define ICON_PATH_WIDE './modular_zzplurt/icons/mob/robot/widerobot.dmi'

/obj/item/robot_model/standard/New()
	borg_skins += list(
		"Assaultron" = list(SKIN_ICON_STATE = "assaultron_standard", SKIN_ICON = ICON_PATH),
		"RoboMaid" = list(SKIN_ICON_STATE = "robomaid_sd", SKIN_ICON = ICON_PATH)
	)
	. = ..()

/obj/item/robot_model/service/New()
	borg_skins += list(
		"Assaultron" = list(SKIN_ICON_STATE = "assaultron_service", SKIN_ICON = ICON_PATH)
	)
	. = ..()

/obj/item/robot_model/engineering/New()
	borg_skins += list(
		"Assaultron" = list(SKIN_ICON_STATE = "assaultron_engi", SKIN_ICON = ICON_PATH),
		"RoboMaid" = list(SKIN_ICON_STATE = "robomaid_eng", SKIN_ICON = ICON_PATH)
	)
	. = ..()

/obj/item/robot_model/medical/New()
	borg_skins += list(
		"Assaultron" = list(SKIN_ICON_STATE = "assaultron_medical", SKIN_ICON = ICON_PATH),
		"RoboMaid" = list(SKIN_ICON_STATE = "robomaid_med", SKIN_ICON = ICON_PATH)
	)
	. = ..()

/obj/item/robot_model/security/New()
	borg_skins += list(
		"Assaultron" = list(SKIN_ICON_STATE = "assaultron_sec", SKIN_ICON = ICON_PATH),
		"Feline" = list(SKIN_ICON_STATE = "vixmed-b", SKIN_ICON = ICON_PATH_WIDE)
	)
	. = ..()
