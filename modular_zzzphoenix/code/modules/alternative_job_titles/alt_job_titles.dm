/datum/job/captain/New()
	alt_titles = list()
	var/list/extra_titles = list(
		"Captain",
		"Chief Executive Officer",
		"Commanding Officer",
		"Facility Director",
		"Site Manager",
		"Station Commander",
		"Station Director",
		"Station Leader",
		"Station Overseer"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/chief_engineer/New()
	alt_titles = list()
	var/list/extra_titles = list(
		"Chief Engineer",
		"Chief Engineer Officer",
		"Construction Coordinator",
		"Engineering Director",
		"Engineering Foreman",
		"Head Crystallomancer",
		"Head Engineer",
		"Head of Engineering",
		"Power Plant Director",
		"Project Manager"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/head_of_personnel/New()
	alt_titles = list()
	var/list/extra_titles = list(
		"Chief of Staff",
		"Crew Supervisor",
		"Employment Officer",
		"Executive Officer",
		"Head of Personnel",
		"Personnel Director",
		"Personnel Manager",
		"Records Administrator",
		"Staff Administrator"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/head_of_security/New()
	alt_titles = list()
	var/list/extra_titles = list(
		"Big Iron",
		"Chief Constable",
		"Chief of Security",
		"Chief Security Officer",
		"Commander of the Guard",
		"Commissar",
		"Commissioner of Security",
		"Division Leader",
		"Head of Security",
		"Security Commander",
		"Sheriff"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/quartermaster/New()
	alt_titles = list()
	var/list/extra_titles = list(
		"Brigadier",
		"Cargo Director",
		"Deck Chief",
		"Head of Cargo",
		"Head of Supply",
		"Logistics Coordinator",
		"Quartermaster",
		"Supply Chief",
		"Supply Foreman",
		"Union Requisitions Officer",
		"Warehouse Supervisor"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/research_director/New()
	alt_titles = list()
	var/list/extra_titles = list(
		"Biorobotics Director",
		"Chef Science Director",
		"Head of Research",
		"Lead Researcher",
		"Research Director",
		"Research Manager",
		"Research Supervisor",
		"Science Administrator",
		"Silicon Administrator"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/chief_medical_officer/New()
	alt_titles = list()
	var/list/extra_titles = list(
		"Chief Medical Officer",
		"Chief Physician",
		"Head of Medical",
		"Head Physician",
		"Medical Administrator",
		"Medical Director"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/atmospheric_technician/New()
	alt_titles = list()
	var/list/extra_titles = list(
		"Atmospheric Technician",
		"Disposals Technician",
		"Emergency Fire Technician",
		"Firefighter",
		"HVAC Engineer",
		"Life Support Technician"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/station_engineer/New()
	alt_titles = list()
	var/list/extra_titles = list(
		"Apprentice Engineer",
		"Astromechanic",
		"Electrician",
		"Emergency Damage Control Technician",
		"Engine Technician",
		"EVA Technician",
		"Hazardous Material Operator",
		"Maintenance Technician",
		"Mechanic",
		"Response Engineer",
		"Station Engineer",
		"Station Architect",
		"Structural Engineer"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/assistant/New()
	alt_titles = list()
	var/list/extra_titles = list(
		"Acolyte",
		"Actor",
		"Ambassador",
		"Artist",
		"Assistant",
		"Bard",
		"Blacksmith",
		"Businessman",
		"Businesswoman",
		"Butler",
		"Civilian",
		"Clerk",
		"Colonist",
		"Contractor",
		"Cosplayer",
		"Crewmate",
		"Dancer",
		"Diplomat",
		"Duke",
		"Entertainer",
		"Escort",
		"Fisher",
		"Fisherman",
		"Fisherwoman",
		"Fitness Instructor",
		"Freelancer",
		"Hobbyist",
		"Hobo",
		"Instructor",
		"Massage therapist",
		"Migrant",
		"Musician",
		"Off-Duty Crew",
		"Off-Duty Staff",
		"Performer",
		"Personal Physician",
		"Pet",
		"Refugee",
		"Secretary",
		"Stripper",
		"Tourist",
		"Trader",
		"Visitor",
		"Waiter"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/bartender/New()
	alt_titles = list()
	var/list/extra_titles = list(
		"Barmaid",
		"Barista",
		"Barkeeper",
		"Bartender",
		"Mixologist",
		"Sommelier",
		"Tavernkeeper"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/janitor/New()
	alt_titles = list()
	var/list/extra_titles = list(
		"Cleaner",
		"Concierge",
		"Custodial Technician",
		"Custodian",
		"Groundskeeper",
		"Janitor",
		"Janitorial Specialist",
		"Maid",
		"Maintenance Technician",
		"Sanitation Technician",
		"Sweeper"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/chaplain/New()
	alt_titles = list()
	var/list/extra_titles = list(
		"Bishop",
		"Chaplain",
		"Cleric",
		"Clockwork Priest",
		"Counselor",
		"Esotericist",
		"Guru",
		"High Priest",
		"High Priestess",
		"Imam",
		"Magister",
		"Medium",
		"Monk",
		"Nun",
		"Oracle",
		"Paranomalist",
		"Pontifex",
		"Preacher",
		"Priest",
		"Priestess",
		"Prior",
		"Rabbi",
		"Reverend",
		"Shrine Guardian",
		"Shrine Maiden",
		"Spiritual Mentor",
		"Techpriest"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/clown/New()
	alt_titles = list()
	var/list/extra_titles = list(
		"Clown",
		"Comedian",
		"Jester",
		"Joker",
		"Performer"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/cook/New()
	alt_titles = list()
	var/list/extra_titles = list(
		"All-American Diner Employee",
		"Baker",
		"Butcher",
		"Chef",
		"Chef de partie",
		"Confectionist",
		"Cook",
		"Culinarian",
		"Culinary Artist",
		"Fodder",
		"Fry Cook",
		"Junior Chef",
		"Line Cook",
		"Nutritionist",
		"Pasty Chef",
		"Sous-Chef",
		"Tavern Chef"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/curator/New()
	alt_titles = list()
	var/list/extra_titles = list(
		"Adventurer",
		"Archaeologist",
		"Archivist",
		"Conservator",
		"Curator",
		"Game Master",
		"Guide",
		"Historian",
		"Journalist",
		"Librarian",
		"Museologist",
		"Professor",
		"Scholar",
		"Teacher",
		"Translator",
		"Veteran Adventurer"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/botanist/New()
	alt_titles = list()
	var/list/extra_titles = list(
		"Apiarist",
		"Apiculturist",
		"Beekeeper",
		"Botanical Researcher",
		"Botanist",
		"Farmer",
		"Florist",
		"Gardener",
		"Herbalist",
		"Hydroponicist",
		"Junior Botanist",
		"Mycologist",
		"Plants Breeder",
		"Soiler",
		"Vintner",
		"Xenobotanist"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/lawyer/New()
	alt_titles = list()
	var/list/extra_titles = list(
		"Attorney",
		"Barrister",
		"Defense Attorney",
		"Human Resources Agent",
		"Internal Affairs Agent",
		"Lawyer",
		"Legal Clerk",
		"Magistrate",
		"Prosecutor",
		"Public Defender"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/mime/New()
	alt_titles = list()
	var/list/extra_titles = list(
		"Mimic",
		"Mime",
		"Mummer",
		"Mute Entertainer",
		"Pantomime",
		"Pantomimist"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/scientist/New()
	alt_titles = list()
	var/list/extra_titles = list(
		"Anomalist",
		"Circuitry Designer",
		"Cytologist",
		"Graduate Student",
		"Lab Technician",
		"Nanite Researcher",
		"Ordnance Technician",
		"Plasma Researcher",
		"Pyrotechnician",
		"Research Assistant",
		"Researcher",
		"Resonance Researcher",
		"Scientist",
		"Tetromino Researcher",
		"Theoretical Physicist",
		"Toxin Researcher",
		"Xenoarchaeologist",
		"Xenobiologist"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/roboticist/New()
	alt_titles = list()
	var/list/extra_titles = list(
		"Apprentice Roboticist",
		"Biomechanical Engineer",
		"Cyberneticist",
		"Droid Mechanic",
		"Machinist",
		"Mechatronic Engineer",
		"MOD Mechanic",
		"Ripperdoc",
		"Roboticist",
		"Synth Technician"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/chemist/New()
	alt_titles = list()
	var/list/extra_titles = list(
		"Alchemist",
		"Apothecarist",
		"Chemical Researcher",
		"Chemist",
		"Organomegaly Healer",
		"Pharmacist",
		"Pharmacologist",
		"Trainee Pharmacist"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/doctor/New()
	alt_titles = list()
	var/list/extra_titles = list(
		"Epidemiologist",
		"General Practitioner",
		"Junior Pathologist",
		"Medical Doctor",
		"Medical Intern",
		"Medical Resident",
		"Medical Student",
		"Medtech",
		"Nurse",
		"Pathologist",
		"Physician",
		"Surgeon",
		"Virologist",
		"Xenosurgeon"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/psychologist/New()
	alt_titles = list()
	var/list/extra_titles = list(
		"Counsellor",
		"Hypnotherapist",
		"Hypnotist",
		"Psychiatrist",
		"Psychologist",
		"Psychotherapist",
		"Sexual Advisor",
		"Therapist",
		"Trust Service Specialist"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/geneticist/New()
	alt_titles = list()
	var/list/extra_titles = list(
		"Gene Tailor",
		"Genemancer",
		"Geneticist",
		"Genetics Researcher"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/paramedic/New()
	alt_titles = list()
	var/list/extra_titles = list(
		"Emergency Medical Doctor",
		"Emergency Medical Technician",
		"Paramedic",
		"Search and Rescue Technician",
		"Trauma Team",
		"Trauma Team Responder"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/virologist/New()
	alt_titles = list()
	var/list/extra_titles = list(
		"Microbiologist",
		"Biochemist",
		"Virologist"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/detective/New()
	alt_titles = list()
	var/list/extra_titles = list(
		"CID Officer",
		"Detective",
		"Forensic Investigator",
		"Forensics Scientist",
		"Forensics Technician",
		"Private Investigator"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/security_officer/New()
	alt_titles = list()
	var/list/extra_titles = list(
		"Civil Protection",
		"Defense Contractor",
		"Guard",
		"Guardsman",
		"Junior Officer",
		"Peacekeeper",
		"Probation Officer",
		"Security Agent",
		"Security Assistant",
		"Security Cadet",
		"Security Constable",
		"Security Guard",
		"Security Officer",
		"Security Operative",
		"Security Specialist"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/warden/New()
	alt_titles = list()
	var/list/extra_titles = list(
		"Armory Manager",
		"Armory Superintendent",
		"Brig Governor",
		"Brig Overwatch",
		"Brig Sentry",
		"Brig Sergeant",
		"Brig Superintendent",
		"Deputy Commissioner",
		"Deputy Commissioner of Security",
		"Dispatch Officer",
		"Jailer",
		"Master-at-Arms",
		"Prison Administrator",
		"Prison Chief",
		"Warden"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/cargo_technician/New()
	alt_titles = list()
	var/list/extra_titles = list(
		"Cargo Technician",
		"Commodities Trader",
		"Cryptocurrency Technician",
		"Deck Worker",
		"Deliveries Officer",
		"Inventory Associate",
		"Logistics Technician",
		"Mail Carrier",
		"Mailman",
		"Mailroom Technician",
		"Mailwoman",
		"Merchantman",
		"Merchantwoman",
		"Postman",
		"Postwoman",
		"Receiving Clerk",
		"Scavenger",
		"Smuggler",
		"Supplier",
		"Supply Technician",
		"Union Associate",
		"Warehouse Technician"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/shaft_miner/New()
	alt_titles = list()
	var/list/extra_titles = list(
		"Apprentice Miner",
		"Contract Miner",
		"Digger",
		"Dredger",
		"Drill Technician",
		"Excavator",
		"Exotic Ore Miner",
		"Hunter",
		"Prospector",
		"Shaft Miner",
		"Spelunker",
		"Union Miner"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/prisoner/New()
	alt_titles = list()
	var/list/extra_titles = list(
		"High Risk Prisoner",
		"Low Risk Prisoner",
		"Low Security Prisoner",
		"Maximum Security Prisoner",
		"Medium Security Prisoner",
		"Minimum Security Prisoner",
		"Prisoner",
		"Protective Custody Prisoner",
		"Supermax Prisoner",
		"Syndicate Prisoner"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/blueshield/New()
	alt_titles = list()
	var/list/extra_titles = list(
		"Blueshield",
		"Command Guard",
		"Command Security",
		"Henchman"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/customs_agent/New()
	alt_titles = list()
	var/list/extra_titles = list(
		"Cargo Guard",
		"Customs Agent"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/corrections_officer/New()
	alt_titles = list()
	var/list/extra_titles = list(
		"Corrections Officer",
		"Prison Officer",
		"Security Detail"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/nanotrasen_consultant/New()
	alt_titles = list()
	var/list/extra_titles = list(
		"Corporate Advisor",
		"Corporate Diplomat",
		"Corporate Representative",
		"Nanotrasen Consultant",
		"Revizor"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/barber/New()
	alt_titles = list()
	var/list/extra_titles = list(
		"Barber",
		"Beautician",
		"Cosmetologist",
		"Fashion Officer"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/bitrunner/New()
	alt_titles = list()
	var/list/extra_titles = list(
		"Bitrunner",
		"Cyber Smuggler",
		"Professional Gamer",
		"Virtual Reality Technician"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/blacksmith/New()
	alt_titles = list()
	var/list/extra_titles = list(
		"Blacksmith",
		"Disposal Technician",
		"Glassworker",
		"Scrap Recycler"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/coroner/New()
	alt_titles = list()
	var/list/extra_titles = list(
		"Coroner",
		"Pathologist"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/orderly/New()
	alt_titles = list()
	var/list/extra_titles = list(
		"Medical Attendant",
		"Medical Guard",
		"Medical Support Technician",
		"Orderly"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/engineering_guard/New()
	alt_titles = list()
	var/list/extra_titles = list(
		"Engineering Guard"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/telecomms_specialist/New()
	alt_titles = list()
	var/list/extra_titles = list(
		"Network Engineer",
		"Sysadmin",
		"Telecomms Specialist",
		"Tram Technician",
		"Wireless Operator"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/science_guard/New()
	alt_titles = list()
	var/list/extra_titles = list(
		"Research Guard",
		"Science Guard"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/bouncer/New()
	alt_titles = list()
	var/list/extra_titles = list(
		"Bouncer",
		"Doorman",
		"Doorwoman",
		"Service Guard"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/security_medic/New()
	alt_titles = list()
	var/list/extra_titles = list(
		"Brig Physician",
		"Combat Medic",
		"Field Medic",
		"Security Corpsman",
		"Security Medic",
		"Special Operations Medic"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()
