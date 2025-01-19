/datum/asset/spritesheet/chat/create_spritesheets()
	. = ..()
	InsertAll("emoji", SPLURT_EMOJI_SET)
	InsertAll("emoji", SPLURT_EMOJI_SET_32)
