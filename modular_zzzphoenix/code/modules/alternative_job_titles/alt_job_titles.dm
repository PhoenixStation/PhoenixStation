/datum/job/captain/New()
	var/list/extra_titles = list(
		"Station Director",
		"Station Overseer",
		"Station Leader",
		"Chief Executive Officer"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/chief_engineer/New()
	var/list/extra_titles = list(
		"Head Engineer",
		"Construction Coordinator",
		"Project Manager",
		"Power Plant Director",
		"Chief Engineer Officer",
		"Engineering Director",
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/head_of_personnel/New()
	var/list/extra_titles = list(
		"Personnel Manager",
		"Staff Administrator",
		"Records Administrator",
		"Personnel Director",
		"Chief of Staff"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/head_of_security/New()
	var/list/extra_titles = list(
		"Division Leader",
		"Big Iron",
		"Commissar",
		"Chief Security Officer",
		"Sheriff"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/quartermaster/New()
	var/list/extra_titles = list(
		"Supply Chief",
		"Brigadier",
		"Cargo Director",
		"Head of Cargo"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/research_director/New()
	var/list/extra_titles = list(
		"Science Administrator",
		"Research Manager",
		"Head of Research"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/chief_medical_officer/New()
	var/list/extra_titles = list(
		"Medical Administrator"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/atmospheric_technician/New()
	var/list/extra_titles = list(
		"Disposals Technician"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/station_engineer/New()
	var/list/extra_titles = list(
		"Structural Engineer",
		"Astromechanic",
		"Station Architect",
		"Hazardous Material Operator",
		"Response Engineer",
		"Maintenance Specialist"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/assistant/New()
	var/list/extra_titles = list(
		"Acolyte",
		"Clerk",
		"Secretary",
		"Blacksmith",
		"Bard",
		"Massage therapist",
		"Crewmate",
		"Visitor",
		"Stripper",
		"Dancer",
		"Cosplayer",
		"Escort",
		"Instructor",
		"Pet",
		"Hobo",
		"Migrant",
		"Refugee"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/bartender/New()
	var/list/extra_titles = list(
		"Mixologist",
		"Sommelier",
		"Barmaid"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/janitor/New()
	var/list/extra_titles = list(
		"Sanitation Technican",
		"Sweeper",
		"Cleaner",
		"Janitorial Specialist"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/chaplain/New()
	var/list/extra_titles = list(
		"Bishop",
		"Prior",
		"Counselor",
		"Techpriest",
		"Sect Leader",
		"Spiritual Mentor",
		"Paranomalist",
		"Medium",
		"Esotericist"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/clown/New()
	var/list/extra_titles = list(
		"Performer"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/cook/New()
	var/list/extra_titles = list(
		"Chef de partie",
		"Fodder",
		"Nutritionist",
		"Culinarian"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/curator/New()
	var/list/extra_titles = list(
		"Scholar",
		"Teacher",
		"Museologist",
		"Translator",
		"Guide",
		"Game Master"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/botanist/New()
	var/list/extra_titles = list(
		"Vintner",
		"Plants Breeder",
		"Soiler",
		"Xenobotanist"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/lawyer/New()
	var/list/extra_titles = list(
		"Attorney"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/mime/New()
	var/list/extra_titles = list(
		"Pantomimist",
		"Pantomime",
		"Mimic",
		"Mute Entertainer"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/scientist/New()
	var/list/extra_titles = list(
		"Researcher",
		"Toxins Researcher",
		"Nanite Programmer",
		"Tetromino Researcher",
		"Xenoarchaeologist",
		"Pyrotechnician"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/roboticist/New()
	var/list/extra_titles = list(
		"Ripperdoc",
		"MOD Mechanic",
		"Synth Technician",
		"Droid Mechanic"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/chemist/New()
	var/list/extra_titles = list(
		"Apothecarist",
		"Organomegaly Healer",
		"Chemical Researcher"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/doctor/New()
	var/list/extra_titles = list(
		"Medical Resident",
		"Medtech",
		"Xenosurgeon",
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/psychologist/New()
	var/list/extra_titles = list(
		"Hypnotherapist",
		"Psychotherapist",
		"Trust Service Specialist",
		"Parapsychologist",
		"Hypnotist",
		"Sexual Advisor"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/geneticist/New()
	var/list/extra_titles = list(
		"Genetics Researcher"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/paramedic/New()
	var/list/extra_titles = list(
		"Trauma Team",
		"Emergency Medical Doctor",
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/virologist/New()
	var/list/extra_titles = list(
		"Microbiologist",
		"Biochemist"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/detective/New()
	var/list/extra_titles = list(
		"Forensic Investigator"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/security_officer/New()
	var/list/extra_titles = list(
		"Security Agent",
		"Probation Officer",
		"Guardsman",
		"Civil Protection"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/warden/New()
	var/list/extra_titles = list(
		"Prison Chief",
		"Armory Manager",
		"Prison Administrator",
		"Brig Superintendent",
		"Brig Overwatch"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/cargo_technician/New()
	var/list/extra_titles = list(
		"Deliveries Officer",
		"Mailroom Technician",
		"Logistics Technician",
		"Cryptocurrency Technician",
		"Cryptocurrency Miner",
		"Supplier",
		"Supply Technician",
		"Invetory Associate",
		"Smuggler",
		"Scavenger"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/shaft_miner/New()
	var/list/extra_titles = list(
		"Exotic Ore Miner",
		"Digger",
		"Hunter"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/prisoner/New()
	var/list/extra_titles = list(
		"Low Security Prisoner",
		"Medium Security Prisoner",
		"Supermax Prisoner",
		"Syndicate Prisoner",
		"Low Risk Prisoner",
		"High Risk Prisoner"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/blueshield
	alt_titles = list(
		"Command Guard",
		"Command Security"
	)

/datum/job/customs_agent
	alt_titles = list(
		"Cargo Guard"
	)

/datum/job/corrections_officer
	alt_titles = list(
		"Prison Officer",
		"Security Detail"
	)

/datum/job/nanotrasen_consultant
	alt_titles = list(
		"Revizor",
		"Corporate Advisor",
		"Corporate Diplomat",
		"Corporate Representative"
	)

/datum/job/barber
	alt_titles = list(
		"Cosmetologist",
		"Fashion Officer",
		"Beautician"
	)

/datum/job/bitrunner
	alt_titles = list(
		"Virtual Reality Technician",
		"Professional Gamer",
		"Cyber Smuggler"
	)

/datum/job/blacksmith
	alt_titles = list(
		"Disposal Technician",
		"Scrap Recycler",
		"Glassworker"
	)

/datum/job/coroner
	alt_titles = list(
		"Pathologist"
	)
