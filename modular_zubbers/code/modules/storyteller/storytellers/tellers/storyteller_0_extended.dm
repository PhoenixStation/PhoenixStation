/datum/storyteller/extended
	name = "Extended (No Chaos)"
	desc = "Extended is the absence of a Storyteller. It will not spawn a single event of any sort, or run any Antagonists. Best for rounds where the population is so low that not even peaceful storytellers are low enough."
	welcome_text = "How is dorms already full? The shift hasn't even started yet."
	disable_distribution = TRUE
	population_max = 140 // PHOENIX EDIT: Increased population max to 140 to allow for more events to be spawned.
	antag_divisor = 32
	storyteller_type = STORYTELLER_TYPE_CALM
	votable = TRUE // PHOENIX EDIT: Enabled voting for the extended storyteller.
