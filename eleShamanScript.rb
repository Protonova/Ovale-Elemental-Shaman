THIS IS NOT MENT FOR US. THIS IS A GITHUB TEST REPO. 
Script works but is not totally bug free.

#http://www.wowhead.com/talent#hhGMGRfkzGZbhM
#Notes:
#Searing totem has a 1min cd
#Earth Shock should always be after Lava Burst
#If I'm moving unleash elements should show
#Fix windshear so it's cd changes depending on specc
#Fix flame shock to show extended debuff time
#Fix ELEMENTALMASTERY's cd dynamic
#Fix FLAMESHOCK's cd to be dynamic
#Add option for aoe with or without earthquake, i hate earthquake...
#Add code to detect if lightning shield is about to fall off

###################################################################
#@@@START
#General Spells
Define(BLOODLUST 2825)
    SpellInfo(BLOODLUST cd=300)
    SpellAddBuff(BLOODLUST BLOODLUST=40)
Define(CALLOFELEMENTS 66842)	
Define(CHAINLIGHTNING 421)
    SpellInfo(CHAINLIGHTNING cd=3)
    SpellAddBuff(CHAINLIGHTNING MAELSTROMWEAPON=0)
Define(EARTHQUAKE 61882)
Define(EARTHSHOCK 8042)
    SpellInfo(EARTHSHOCK cd=6 sharedcd=shock)
    SpellAddTargetDebuff(EARTHSHOCK EARTHSHOCK=8)
Define(ELEMENTALMASTERY 16166)
    SpellInfo(ELEMENTALMASTERY cd=180)
    SpellAddBuff(ELEMENTALMASTERY ELEMENTALMASTERY=30)
Define(FIRENOVA 1535)
    SpellInfo(FIRENOVA cd=10)
Define(FLAMESHOCK 8050)
    SpellInfo(FLAMESHOCK cd=6 sharedcd=shock)
    SpellAddTargetDebuff(FLAMESHOCK FLAMESHOCK=18)
Define(FLAMETONGUEWEAPON 8024)
Define(HEROISM 32182)
    SpellInfo(HEROISM cd=300)
    SpellAddBuff(HEROISM HEROISM=40)
Define(HEX 51514)
Define(LAVABURST 51505)
    SpellInfo(LAVABURST cd=8)
Define(LIGHTNINGBOLT 403)
    SpellAddBuff(LIGHTNINGBOLT MAELSTROMWEAPON=0)
Define(LIGHTNINGSHIELD 324)
    SpellAddBuff(LIGHTNINGSHIELD LIGHTNINGSHIELD=600)
Define(SPIRITWALKERSGRACE 79206)
    SpellInfo(SPIRITWALKERSGRACE cd=120)
    SpellAddBuff(SPIRITWALKERSGRACE SPIRITWALKERSGRACE=15)
Define(THUNDERSTORM 51490)
    SpellInfo(THUNDERSTORM cd=45)
Define(UNLEASHELEMENTS 73680)
    SpellInfo(UNLEASHELEMENTS cd=15)
Define(UNLEASHFLAME 73683)
    SpellInfo(UNLEASHFLAME cd=15)
    SpellAddBuff(UNLEASHFLAME UNLEASHFLAME=8)
Define(WINDSHEAR 57994)
    SpellInfo(WINDSHEAR cd=6)
###################################################################
#Trinkets & Procs
Define(DARKMOONVOLCANO 62047) #Darkmoon Card: Volcano
Define(NTHERALIONSMIRROR 59519) #Theralion's Mirror i359
Define(HTHERALIONSMIRROR 65105) #Theralion's Mirror i379
Define(VOLCANICDESTROUCTION 89091) #Darkmoon Card: Volcano's Proc
Define(NREVELATION 92108) #Theralion's Mirror i359 Proc
Define(HREVELATION 92320) #Theralion's Mirror i372 Proc
Define(POWERTORRENT 74241) #Power Torrent Proc
Define(MAELSTROMWEAPON 53817)
Define(UNLEASHWIND 73681)
###################################################################
#Fire Totems
Define(FIREELEMENTALTOTEM 2894)
Define(MAGMATOTEM 8190)
    SpellInfo(MAGMATOTEM cd=20)
Define(SEARINGTOTEM 3599)
    SpellInfo(SEARINGTOTEM cd=10) #Fake CD so it won't be displayed twice
Define(FLAMETONGUEWEAPON 8024)
#Define(TOTEMOFWRATH 30706)
#Water Totems
Define(HEALINGSTREAMTOTEM 5394)
Define(MANASPRINGTOTEM 5675)
Define(TOTEMOFTRANQUILMIND 87718)
#Air Totems
Define(GROUNDINGTOTEM 8177)
Define(WINDFURYTOTEM 8512)
Define(WRATHOFAIRTOTEM 3738)
#Earth Totems
Define(EARTHELEMENTALTOTEM 2062)
Define(STONECLAWTOTEM 5730)
Define(STONESKINTOTEM 8071)
Define(STRENGTHOFEARTHTOTEM 8075)
Define(TREMORTOTEM 8143)

#Replacement Auras
#earth
Define(Define(DEVOTIONAURA 465)	#armor
Define(HORNOFWINTER 57330)		#agi and str
Define(RAWROFCOURAGE 93435)		#agi and str

#air
Define(MOONKINFORM 24858)		#5% haste
Define(MINDQUICKENING 49868)	#5% haste
Define(HUNTINGPARTY 53290)		#10% atk speed
Define(IMPICYTALONS 55610)		#10% atk speed
#water
Define(BLESSINGOFMIGHT 19740)			#MP5
Define(FELINTELLIGENCE 54424)			#MP5
Define(RESISTANCEAURA 19891)			#resistance
Define(ELEMENTALRESISTANCETOTEM 8184)	#resistance
Define(GLYPHEDHST 55456)				#resistance
Define(CONCENTRATIONAURA 19746)			#pushback
Define(TRANQUILMINDTOTEM 87718)			#pushback



###################################################################
# CHAINLIGHTNING
# UNLEASHELEMENTS
# EARTHQUAKE
# FIRENOVA
# FLAMETONGUEWEAPON

# EARTHELEMENTALTOTEM
# FIREELEMENTALTOTEM

# ELEMENTALMASTERY
# WINDSHEAR
# HEX
# SPIRITWALKERSGRACE

# POWERTORRENT
# DARKMOONVOLCANO
# HREVELATION
# NREVELATION
# Trinket 1
# Trinket 2

###################################################################
#Options
AddCheckBox(shear SpellName(WINDSHEAR) default)
AddCheckBox(aoe L(AOE))
AddCheckBox(cooldownsR "Show Offensive CDs (Right)" default mastery=1)
AddCheckBox(cooldownsL "Show Totem CDs (Left)" default mastery=1)

AddListItem(cd0 t0 "Top Left - No Cooldown" default mastery=1)
AddListItem(cd0 t1 "Top Left - Chain Lightning" mastery=1)
AddListItem(cd0 t2 "Top Left - Unleash Elements" mastery=1)
AddListItem(cd0 t3 "Top Left - Earth Quake" mastery=1)
AddListItem(cd0 t4 "Top Left - Fire Nova" mastery=1)
AddListItem(cd0 t5 "Top Left - Flame Tongue Weapon" mastery=1)
AddListItem(cd0 t6 "Top Left - Earth Elemental" mastery=1)
AddListItem(cd0 t7 "Top Left - Fire Elemental" mastery=1)
AddListItem(cd0 t8 "Top Left - Elemental Mastery" mastery=1)
AddListItem(cd0 t9 "Top Left - Wind Shear" mastery=1)
AddListItem(cd0 t10 "Top Left - Hex" mastery=1)
AddListItem(cd0 t11 "Top Left - Spirit Walker's Grace" mastery=1)
AddListItem(cd0 t12 "Top Left - Power Torrent iCD" mastery=1)
AddListItem(cd0 t13 "Top Left - Darkmoon Volcano iCD" mastery=1)
AddListItem(cd0 t14 "Top Left - Theralion's Mirror iCD (i359)" mastery=1)
AddListItem(cd0 t15 "Top Left - Theralion's Mirror iCD (i372)" mastery=1)
AddListItem(cd0 t16 "Top Left - Trinket 0" mastery=1)
AddListItem(cd0 t17 "Top Left - Trinket 1" mastery=1)

AddListItem(cd1 t0 "Bottom Left - No Cooldown" default mastery=1)
AddListItem(cd1 t1 "Bottom Left - Chain Lightning" mastery=1)
AddListItem(cd1 t2 "Bottom Left - Unleash Elements" mastery=1)
AddListItem(cd1 t3 "Bottom Left - Earth Quake" mastery=1)
AddListItem(cd1 t4 "Bottom Left - Fire Nova" mastery=1)
AddListItem(cd1 t5 "Bottom Left - Flame Tongue Weapon" mastery=1)
AddListItem(cd1 t6 "Bottom Left - Earth Elemental" mastery=1)
AddListItem(cd1 t7 "Bottom Left - Fire Elemental" mastery=1)
AddListItem(cd1 t8 "Bottom Left - Elemental Mastery" mastery=1)
AddListItem(cd1 t9 "Bottom Left - Wind Shear" mastery=1)
AddListItem(cd1 t10 "Bottom Left - Hex" mastery=1)
AddListItem(cd1 t11 "Bottom Left - Spirit Walker's Grace" mastery=1)
AddListItem(cd1 t12 "Bottom Left - Power Torrent" mastery=1)
AddListItem(cd1 t13 "Bottom Left - Darkmoon Volcano" mastery=1)
AddListItem(cd1 t14 "Bottom Left - Theralion's Mirror (i359)" mastery=1)
AddListItem(cd1 t15 "Bottom Left - Theralion's Mirror (i372)" mastery=1)
AddListItem(cd1 t16 "Bottom Left - Trinket 0" mastery=1)
AddListItem(cd1 t17 "Bottom Left - Trinket 1" mastery=1)

AddListItem(cd2 t0 "Top Right - No Cooldown" default mastery=1)
AddListItem(cd2 t1 "Top Right - Chain Lightning" mastery=1)
AddListItem(cd2 t2 "Top Right - Unleash Elements" mastery=1)
AddListItem(cd2 t3 "Top Right - Earth Quake" mastery=1)
AddListItem(cd2 t4 "Top Right - Fire Nova" mastery=1)
AddListItem(cd2 t5 "Top Right - Flame Tongue Weapon" mastery=1)
AddListItem(cd2 t6 "Top Right - Earth Elemental" mastery=1)
AddListItem(cd2 t7 "Top Right - Fire Elemental" mastery=1)
AddListItem(cd2 t8 "Top Right - Elemental Mastery" mastery=1)
AddListItem(cd2 t9 "Top Right - Wind Shear" mastery=1)
AddListItem(cd2 t10 "Top Right - Hex" mastery=1)
AddListItem(cd2 t11 "Top Right - Spirit Walker's Grace" mastery=1)
AddListItem(cd2 t12 "Top Right - Power Torrent" mastery=1)
AddListItem(cd2 t13 "Top Right - Darkmoon Volcano" mastery=1)
AddListItem(cd2 t14 "Top Right - Theralion's Mirror (i359)" mastery=1)
AddListItem(cd2 t15 "Top Right - Theralion's Mirror (i372)" mastery=1)
AddListItem(cd2 t16 "Top Right - Trinket 0" mastery=1)
AddListItem(cd2 t17 "Top Right - Trinket 1" mastery=1)

AddListItem(cd3 t0 "Bottom Right - No Cooldown" default mastery=1)
AddListItem(cd3 t1 "Bottom Right - Chain Lightning" mastery=1)
AddListItem(cd3 t2 "Bottom Right - Unleash Elements" mastery=1)
AddListItem(cd3 t3 "Bottom Right - Earth Quake" mastery=1)
AddListItem(cd3 t4 "Bottom Right - Fire Nova" mastery=1)
AddListItem(cd3 t5 "Bottom Right - Flame Tongue Weapon" mastery=1)
AddListItem(cd3 t6 "Bottom Right - Earth Elemental" mastery=1)
AddListItem(cd3 t7 "Bottom Right - Fire Elemental" mastery=1)
AddListItem(cd3 t8 "Bottom Right - Elemental Mastery" mastery=1)
AddListItem(cd3 t9 "Bottom Right - Wind Shear" mastery=1)
AddListItem(cd3 t10 "Bottom Right - Hex" mastery=1)
AddListItem(cd3 t11 "Bottom Right - Spirit Walker's Grace" mastery=1)
AddListItem(cd3 t12 "Bottom Right - Power Torrent" mastery=1)
AddListItem(cd3 t13 "Bottom Right - Darkmoon Volcano" mastery=1)
AddListItem(cd3 t14 "Bottom Right - Theralion's Mirror (i359)" mastery=1)
AddListItem(cd3 t15 "Bottom Right - Theralion's Mirror (i372)" mastery=1)
AddListItem(cd3 t16 "Bottom Right - Trinket 0" mastery=1)
AddListItem(cd3 t17 "Bottom Right - Trinket 1" mastery=1)

AddListItem(cd4 t0 "Bottom Right - No Cooldown" default mastery=1)
AddListItem(cd4 t1 "Bottom Right - Chain Lightning" mastery=1)
AddListItem(cd4 t2 "Bottom Right - Unleash Elements" mastery=1)
AddListItem(cd4 t3 "Bottom Right - Earth Quake" mastery=1)
AddListItem(cd4 t4 "Bottom Right - Fire Nova" mastery=1)
AddListItem(cd4 t5 "Bottom Right - Flame Tongue Weapon" mastery=1)
AddListItem(cd4 t6 "Bottom Right - Earth Elemental" mastery=1)
AddListItem(cd4 t7 "Bottom Right - Fire Elemental" mastery=1)
AddListItem(cd4 t8 "Bottom Right - Elemental Mastery" mastery=1)
AddListItem(cd4 t9 "Bottom Right - Wind Shear" mastery=1)
AddListItem(cd4 t10 "Bottom Right - Hex" mastery=1)
AddListItem(cd4 t11 "Bottom Right - Spirit Walker's Grace" mastery=1)
AddListItem(cd4 t12 "Bottom Right - Power Torrent" mastery=1)
AddListItem(cd4 t13 "Bottom Right - Darkmoon Volcano" mastery=1)
AddListItem(cd4 t14 "Bottom Right - Theralion's Mirror (i359)" mastery=1)
AddListItem(cd4 t15 "Bottom Right - Theralion's Mirror (i372)" mastery=1)
AddListItem(cd4 t16 "Bottom Right - Trinket 0" mastery=1)
AddListItem(cd4 t17 "Bottom Right - Trinket 1" mastery=1)

AddListItem(cd5 t0 "Bottom Right - No Cooldown" default mastery=1)
AddListItem(cd5 t1 "Bottom Right - Chain Lightning" mastery=1)
AddListItem(cd5 t2 "Bottom Right - Unleash Elements" mastery=1)
AddListItem(cd5 t3 "Bottom Right - Earth Quake" mastery=1)
AddListItem(cd5 t4 "Bottom Right - Fire Nova" mastery=1)
AddListItem(cd5 t5 "Bottom Right - Flame Tongue Weapon" mastery=1)
AddListItem(cd5 t6 "Bottom Right - Earth Elemental" mastery=1)
AddListItem(cd5 t7 "Bottom Right - Fire Elemental" mastery=1)
AddListItem(cd5 t8 "Bottom Right - Elemental Mastery" mastery=1)
AddListItem(cd5 t9 "Bottom Right - Wind Shear" mastery=1)
AddListItem(cd5 t10 "Bottom Right - Hex" mastery=1)
AddListItem(cd5 t11 "Bottom Right - Spirit Walker's Grace" mastery=1)
AddListItem(cd5 t12 "Bottom Right - Power Torrent" mastery=1)
AddListItem(cd5 t13 "Bottom Right - Darkmoon Volcano" mastery=1)
AddListItem(cd5 t14 "Bottom Right - Theralion's Mirror (i359)" mastery=1)
AddListItem(cd5 t15 "Bottom Right - Theralion's Mirror (i372)" mastery=1)
AddListItem(cd5 t16 "Bottom Right - Trinket 0" mastery=1)
AddListItem(cd5 t17 "Bottom Right - Trinket 1" mastery=1)
###################################################################

ScoreSpells(LIGHTNINGSHIELD CHAINLIGHTNING FLAMESHOCK LAVABURST EARTHSHOCK LIGHTNINGBOLT
            LAVALASH UNLEASHELEMENTS)

#@ Main Script @#
###################################################################
#Right Cooldowns
#TL:SEARINGTOTEM TR:HEALINGSTREAMTOTEM
#BL:WRATHOFAIRTOTEM BR:STONESKINTOTEM
AddIcon help=cd size=small mastery=1 { # Fire
    if CheckBoxOn(cooldownsL) {
		if CheckBoxOn(aoe)
		{
			Spell(MAGMATOTEM)
		}
		if CheckBoxOff(aoe)
		{
			Spell(SEARINGTOTEM)
		}
	}
}
AddIcon help=cd size=small mastery=1 { # Water, GHST > Manaspring > ERT > ToTM
	if CheckBoxOn(cooldownsL) {
	
		unless BuffPresent(CONCENTRATIONAURA)
		{
			Spell(TRANQUILMINDTOTEM)
		}
		unless BuffPresent(BLESSINGOFMIGHT) or BuffPresent(FELINTELLIGENCE)
		{
			Spell(MANASPRINGTOTEM)
		}
		unless BuffPresent(RESISTANCEAURA) or BuffPresent(GLYPHEDHST) or Spell(ELEMENTALRESISTANCETOTEM)
		{
			Spell(HEALINGSTREAMTOTEM)
		}
	}
}
AddIcon help=cd size=small mastery=1 { # Air Wrath > Wind fury > grounding
	if CheckBoxOn(cooldownsL) {
		Spell(GROUNDINGTOTEM)
		unless BuffPresent(HUNTINGPARTY) or BuffPresent(IMPICYTALONS)
		{
			Spell(WINDFURYTOTEM)
		}
		unless BuffPresent(MOONKINFORM) or BuffPresent(MINDQUICKENING)
		{
			Spell(WRATHOFAIRTOTEM)
		}
	}
}
AddIcon help=cd size=small mastery=1 { # Earth Stone Skin > Strength Totem
	if CheckBoxOn(cooldownsL) {
		unless BuffPresent(HORNOFWINTER) or BuffPresent(RAWROFCOURAGE)
		{
			Spell(STRENGTHOFEARTHTOTEM)
		}
		unless BuffPresent(DEVOTIONAURA)
		{
			Spell(WRATHOFAIRTOTEM)
		}
	}
}

####################################################################
#Main Rotation
#Rotation Priority
#A fire totem is down (For the 10% SP)
#Lightning Shield if not active (it better be!) 
#Flame Shock if not up or about to wear off
#Lava Burst
#Earth Shock with 7 charges or more AND flame shock will last until shock CD is back up
#Lightning Bolt
#Unleash Weapon when moving

#Rotation:
#Flame shock + Unleash + totems down + glove use + EM + LvB

#Code Logic
#Flametounge weapon
#Interrupt if selected
#Lightning Shield
#Fire Totem
#Flame Shock
#Unleash Elements
#Elemental Mastery
#Lava Burst
#Earth shock if at 7 charges or more AND flame shock will last until shock CD is back up
#Lightning chain if aoe
#Lightning Bolt
#NOTE ADD FIRENOVA SOME WHERE
AddIcon help=main mastery=1 
{
    unless InCombat()
    {
        if WeaponEnchantExpires(mainhand 400) Spell(FLAMETONGUEWEAPON)
    }
	if CheckBoxOn(shear) # Interrupt
	{
		if TargetIsCasting(yes) and TargetIsInterruptible(yes) {
			Spell(WINDSHEAR)
		}
	}
	if BuffExpires(LIGHTNINGSHIELD 2) Spell(LIGHTNINGSHIELD)
	if Speed(more 0) Spell(UNLEASHELEMENTS)
	if 2s before TotemExpires(water) or 2s before TotemExpires(air) Spell(CALLOFELEMENTS)
	if 2s before TotemExpires(fire) Spell(SEARINGTOTEM)
	if TargetDebuffExpires(FLAMESHOCK 1.5 mine=1) Spell(FLAMESHOCK)
	if CheckBoxOn(aoe)
    {
        Spell(EARTHQUAKE)
        if TargetDebuffPresent(FLAMESHOCK mine=1) Spell(FIRENOVA)
    }
	if target.debuffExpires(FLAMESHOCK 2.9 haste=spell mine=1) - castTime(LAVABURST) > 1 Spell(LAVABURST)
	unless TargetDebuffExpires(FLAMESHOCK 5 mine=1)
	if BuffPresent(LIGHTNINGSHIELD stacks=7) Spell(EARTHSHOCK)
    if BuffPresent(LIGHTNINGSHIELD stacks=7) and { target.debuffExpires(FLAMESHOCK mine=1) > spell(LAVABURST) }
            and { target.debuffExpires(FLAMESHOCK mine=1) < spell(LAVABURST) + timeWithHaste(3) } Spell(EARTHSHOCK)
	
	if CheckBoxOn(aoe) Spell(CHAINLIGHTNING)
    #Filler
    Spell(LIGHTNINGBOLT)
	if ManaPercent(less 50) Spell(THUNDERSTORM)
}
###################################################################
#Secondary Rotation

###################################################################
#Left Icons

#Selectable Things:
# CHAINLIGHTNING
# UNLEASHELEMENTS
# EARTHQUAKE
# FIRENOVA
# FLAMETONGUEWEAPON

# EARTHELEMENTALTOTEM
# FIREELEMENTALTOTEM

# ELEMENTALMASTERY
# WINDSHEAR
# HEX
# SPIRITWALKERSGRACE

# POWERTORRENT
# DARKMOONVOLCANO
# HREVELATION
# NREVELATION
# Trinket 1
# Trinket 2

AddIcon help=cd size=small mastery=1 {
    if CheckBoxOn(cooldownsR) {
        if List(cd0 t1) Spell(CHAINLIGHTNING)
		if List(cd0 t2) Spell(UNLEASHELEMENTS)
		if List(cd0 t3) Spell(EARTHQUAKE)
		if List(cd0 t4) Spell(FIRENOVA)
		if List(cd0 t5)
		{
			if BuffPresent(FLAMETONGUEWEAPON)
			{
				if WeaponEnchantExpires(mainhand 400) Spell(FLAMETONGUEWEAPON)
				Item(MainHandSlot)
			}
			unless BuffPresent(FLAMETONGUEWEAPON) 
			{
				Spell(FLAMETONGUEWEAPON)
			}
		}
		
		
		if List(cd0 t6) Spell(EARTHELEMENTALTOTEM)
		if List(cd0 t7) Spell(FIREELEMENTALTOTEM)
		if List(cd0 t8) Spell(ELEMENTALMASTERY)
		if List(cd0 t9) Spell(WINDSHEAR)
		if List(cd0 t10) Spell(HEX)
		if List(cd0 t11) Spell(SPIRITWALKERSGRACE)
		#if List(cd0 t12) Spell(POWERTORRENT)
		if List(cd0 t12)
		{
			unless BuffPresent(POWERTORRENT)
			{
				if 0s before BuffGain(POWERTORRENT 45) Item(MainHandSlot)
			}
			if BuffPresent(POWERTORRENT) 
			{
				if 0s before BuffExpires(POWERTORRENT 0) Texture(Ability_rogue_dirtydeeds)
			}
		}
		#if List(cd0 t13) Spell(DARKMOONVOLCANO)
		if List(cd0 t13)
		{
			unless BuffPresent(VOLCANICDESTROUCTION)
			{
				if 0s before BuffGain(VOLCANICDESTROUCTION 50) Item(DARKMOONVOLCANO)
			}
			if BuffPresent(VOLCANICDESTROUCTION) 
			{
				if 0s before BuffExpires(VOLCANICDESTROUCTION 0) Texture(spell_lightning_lightningbolt01)
			}
		}
		#if List(cd0 t14) Spell(NREVELATION)
		if List(cd0 t14)
		{
			unless BuffPresent(NREVELATION)
			{
				if 0s before BuffGain(NREVELATION 90) Item(NTHERALIONSMIRROR)
			}
			if BuffPresent(NREVELATION) 
			{
				if 0s before BuffExpires(NREVELATION 0) Texture(spell_arcane_blink)
			}
		}
		#if List(cd0 t15) Spell(HREVELATION)
		if List(cd0 t15)
		{
			unless BuffPresent(HREVELATION)
			{
				if 0s before BuffGain(HREVELATION 90) Item(HTHERALIONSMIRROR)
			}
			if BuffPresent(HREVELATION) 
			{
				if 0s before BuffExpires(HREVELATION 0) Texture(spell_arcane_blink)
			}
		}
		if List(cd0 t16) Item(Trinket0Slot usable=1)
		if List(cd0 t17) Item(Trinket1Slot usable=1)
    }
}
AddIcon help=cd size=small mastery=1 {
    if CheckBoxOn(cooldownsR) {
        if List(cd1 t1) Spell(CHAINLIGHTNING)
		if List(cd1 t2) Spell(UNLEASHELEMENTS)
		if List(cd1 t3) Spell(EARTHQUAKE)
		if List(cd1 t4) Spell(FIRENOVA)
		if List(cd1 t5) Spell(FLAMETONGUEWEAPON)
		if List(cd1 t6) Spell(EARTHELEMENTALTOTEM)
		if List(cd1 t7) Spell(FIREELEMENTALTOTEM)
		if List(cd1 t8) Spell(ELEMENTALMASTERY)
		if List(cd1 t9) Spell(WINDSHEAR)
		if List(cd1 t10) Spell(HEX)
		if List(cd1 t11) Spell(SPIRITWALKERSGRACE)
		#if List(cd1 t12) Spell(POWERTORRENT)
		if List(cd1 t12)
		{
			unless BuffPresent(POWERTORRENT)
			{
				if 0s before BuffGain(POWERTORRENT 45) Item(MainHandSlot)
			}
			if BuffPresent(POWERTORRENT) 
			{
				if 0s before BuffExpires(POWERTORRENT 0) Texture(Ability_rogue_dirtydeeds)
			}
		}
		#if List(cd1 t13) Spell(DARKMOONVOLCANO)
		if List(cd1 t13)
		{
			unless BuffPresent(VOLCANICDESTROUCTION)
			{
				if 0s before BuffGain(VOLCANICDESTROUCTION 50) Item(DARKMOONVOLCANO)
			}
			if BuffPresent(VOLCANICDESTROUCTION) 
			{
				if 0s before BuffExpires(VOLCANICDESTROUCTION 0) Texture(spell_lightning_lightningbolt01)
			}
		}
		#if List(cd1 t14) Spell(NREVELATION)
		if List(cd1 t14)
		{
			unless BuffPresent(NREVELATION)
			{
				if 0s before BuffGain(NREVELATION 90) Item(NTHERALIONSMIRROR)
			}
			if BuffPresent(NREVELATION) 
			{
				if 0s before BuffExpires(NREVELATION 0) Texture(spell_arcane_blink)
			}
		}
		#if List(cd1 t15) Spell(HREVELATION)
		if List(cd1 t15)
		{
			unless BuffPresent(HREVELATION)
			{
				if 0s before BuffGain(HREVELATION 90) Item(HTHERALIONSMIRROR)
			}
			if BuffPresent(HREVELATION) 
			{
				if 0s before BuffExpires(HREVELATION 0) Texture(spell_arcane_blink)
			}
		}
		if List(cd1 t16) Item(Trinket0Slot usable=1)
		if List(cd1 t17) Item(Trinket1Slot usable=1)
    }
}
AddIcon help=cd size=small mastery=1 {
    if CheckBoxOn(cooldownsR) {
        if List(cd2 t1) Spell(CHAINLIGHTNING)
		if List(cd2 t2) Spell(UNLEASHELEMENTS)
		if List(cd2 t3) Spell(EARTHQUAKE)
		if List(cd2 t4) Spell(FIRENOVA)
		if List(cd2 t5) Spell(FLAMETONGUEWEAPON)
		if List(cd2 t6) Spell(EARTHELEMENTALTOTEM)
		if List(cd2 t7) Spell(FIREELEMENTALTOTEM)
		if List(cd2 t8) Spell(ELEMENTALMASTERY)
		if List(cd2 t9) Spell(WINDSHEAR)
		if List(cd2 t10) Spell(HEX)
		if List(cd2 t11) Spell(SPIRITWALKERSGRACE)
		#if List(cd2 t12) Spell(POWERTORRENT)
		if List(cd2 t12)
		{
			unless BuffPresent(POWERTORRENT)
			{
				if 0s before BuffGain(POWERTORRENT 45) Item(MainHandSlot)
			}
			if BuffPresent(POWERTORRENT) 
			{
				if 0s before BuffExpires(POWERTORRENT 0) Texture(Ability_rogue_dirtydeeds)
			}
		}
		#if List(cd2 t13) Spell(DARKMOONVOLCANO)
		if List(cd2 t13)
		{
			unless BuffPresent(VOLCANICDESTROUCTION)
			{
				if 0s before BuffGain(VOLCANICDESTROUCTION 50) Item(DARKMOONVOLCANO)
			}
			if BuffPresent(VOLCANICDESTROUCTION) 
			{
				if 0s before BuffExpires(VOLCANICDESTROUCTION 0) Texture(spell_lightning_lightningbolt01)
			}
		}
		#if List(cd2 t14) Spell(NREVELATION)
		if List(cd2 t14)
		{
			unless BuffPresent(NREVELATION)
			{
				if 0s before BuffGain(NREVELATION 90) Item(NTHERALIONSMIRROR)
			}
			if BuffPresent(NREVELATION) 
			{
				if 0s before BuffExpires(NREVELATION 0) Texture(spell_arcane_blink)
			}
		}
		#if List(cd2 t15) Spell(HREVELATION)
		if List(cd2 t15)
		{
			unless BuffPresent(HREVELATION)
			{
				if 0s before BuffGain(HREVELATION 90) Item(HTHERALIONSMIRROR)
			}
			if BuffPresent(HREVELATION) 
			{
				if 0s before BuffExpires(HREVELATION 0) Texture(spell_arcane_blink)
			}
		}
		if List(cd2 t16) Item(Trinket0Slot usable=1)
		if List(cd2 t17) Item(Trinket1Slot usable=1)
    }
}
AddIcon help=cd size=small mastery=1 {
    if CheckBoxOn(cooldownsR) {
        if List(cd3 t1) Spell(CHAINLIGHTNING)
		if List(cd3 t2) Spell(UNLEASHELEMENTS)
		if List(cd3 t3) Spell(EARTHQUAKE)
		if List(cd3 t4) Spell(FIRENOVA)
		if List(cd3 t5) Spell(FLAMETONGUEWEAPON)
		if List(cd3 t6) Spell(EARTHELEMENTALTOTEM)
		if List(cd3 t7) Spell(FIREELEMENTALTOTEM)
		if List(cd3 t8) Spell(ELEMENTALMASTERY)
		if List(cd3 t9) Spell(WINDSHEAR)
		if List(cd3 t10) Spell(HEX)
		if List(cd3 t11) Spell(SPIRITWALKERSGRACE)
		#if List(cd3 t12) Spell(POWERTORRENT)
		if List(cd3 t12)
		{
			unless BuffPresent(POWERTORRENT)
			{
				if 0s before BuffGain(POWERTORRENT 45) Item(MainHandSlot)
			}
			if BuffPresent(POWERTORRENT) 
			{
				if 0s before BuffExpires(POWERTORRENT 0) Texture(Ability_rogue_dirtydeeds)
			}
		}
		#if List(cd3 t13) Spell(DARKMOONVOLCANO)
		if List(cd3 t13)
		{
			unless BuffPresent(VOLCANICDESTROUCTION)
			{
				if 0s before BuffGain(VOLCANICDESTROUCTION 50) Item(DARKMOONVOLCANO)
			}
			if BuffPresent(VOLCANICDESTROUCTION) 
			{
				if 0s before BuffExpires(VOLCANICDESTROUCTION 0) Texture(spell_lightning_lightningbolt01)
			}
		}
		#if List(cd3 t14) Spell(NREVELATION)
		if List(cd3 t14)
		{
			unless BuffPresent(NREVELATION)
			{
				if 0s before BuffGain(NREVELATION 90) Item(NTHERALIONSMIRROR)
			}
			if BuffPresent(NREVELATION) 
			{
				if 0s before BuffExpires(NREVELATION 0) Texture(spell_arcane_blink)
			}
		}
		#if List(cd3 t15) Spell(HREVELATION)
		if List(cd3 t15)
		{
			unless BuffPresent(HREVELATION)
			{
				if 0s before BuffGain(HREVELATION 90) Item(HTHERALIONSMIRROR)
			}
			if BuffPresent(HREVELATION) 
			{
				if 0s before BuffExpires(HREVELATION 0) Texture(spell_arcane_blink)
			}
		}
		if List(cd3 t16) Item(Trinket0Slot usable=1)
		if List(cd3 t17) Item(Trinket1Slot usable=1)
    }
}
AddIcon help=cd size=small mastery=1 {
    if CheckBoxOn(cooldownsR) {
        if List(cd4 t1) Spell(CHAINLIGHTNING)
		if List(cd4 t2) Spell(UNLEASHELEMENTS)
		if List(cd4 t3) Spell(EARTHQUAKE)
		if List(cd4 t4) Spell(FIRENOVA)
		if List(cd4 t5) Spell(FLAMETONGUEWEAPON)
		if List(cd4 t6) Spell(EARTHELEMENTALTOTEM)
		if List(cd4 t7) Spell(FIREELEMENTALTOTEM)
		if List(cd4 t8) Spell(ELEMENTALMASTERY)
		if List(cd4 t9) Spell(WINDSHEAR)
		if List(cd4 t10) Spell(HEX)
		if List(cd4 t11) Spell(SPIRITWALKERSGRACE)
		#if List(cd4 t12) Spell(POWERTORRENT)
		if List(cd4 t12)
		{
			unless BuffPresent(POWERTORRENT)
			{
				if 0s before BuffGain(POWERTORRENT 45) Item(MainHandSlot)
			}
			if BuffPresent(POWERTORRENT) 
			{
				if 0s before BuffExpires(POWERTORRENT 0) Texture(Ability_rogue_dirtydeeds)
			}
		}
		#if List(cd4 t13) Spell(DARKMOONVOLCANO)
		if List(cd4 t13)
		{
			unless BuffPresent(VOLCANICDESTROUCTION)
			{
				if 0s before BuffGain(VOLCANICDESTROUCTION 50) Item(DARKMOONVOLCANO)
			}
			if BuffPresent(VOLCANICDESTROUCTION) 
			{
				if 0s before BuffExpires(VOLCANICDESTROUCTION 0) Texture(spell_lightning_lightningbolt01)
			}
		}
		#if List(cd4 t14) Spell(NREVELATION)
		if List(cd4 t14)
		{
			unless BuffPresent(NREVELATION)
			{
				if 0s before BuffGain(NREVELATION 90) Item(NTHERALIONSMIRROR)
			}
			if BuffPresent(NREVELATION) 
			{
				if 0s before BuffExpires(NREVELATION 0) Texture(spell_arcane_blink)
			}
		}
		#if List(cd4 t15) Spell(HREVELATION)
		if List(cd4 t15)
		{
			unless BuffPresent(HREVELATION)
			{
				if 0s before BuffGain(HREVELATION 90) Item(HTHERALIONSMIRROR)
			}
			if BuffPresent(HREVELATION) 
			{
				if 0s before BuffExpires(HREVELATION 0) Texture(spell_arcane_blink)
			}
		}
		if List(cd4 t16) Item(Trinket0Slot usable=1)
		if List(cd4 t17) Item(Trinket1Slot usable=1)
    }
}
AddIcon help=cd size=small mastery=1 {
    if CheckBoxOn(cooldownsR) {
        if List(cd5 t1) Spell(CHAINLIGHTNING)
		if List(cd5 t2) Spell(UNLEASHELEMENTS)
		if List(cd5 t3) Spell(EARTHQUAKE)
		if List(cd5 t4) Spell(FIRENOVA)
		if List(cd5 t5) Spell(FLAMETONGUEWEAPON)
		if List(cd5 t6) Spell(EARTHELEMENTALTOTEM)
		if List(cd5 t7) Spell(FIREELEMENTALTOTEM)
		if List(cd5 t8) Spell(ELEMENTALMASTERY)
		if List(cd5 t9) Spell(WINDSHEAR)
		if List(cd5 t10) Spell(HEX)
		if List(cd5 t11) Spell(SPIRITWALKERSGRACE)
		#if List(cd5 t12) Spell(POWERTORRENT)
		if List(cd5 t12)
		{
			unless BuffPresent(POWERTORRENT)
			{
				if 0s before BuffGain(POWERTORRENT 45) Item(MainHandSlot)
			}
			if BuffPresent(POWERTORRENT) 
			{
				if 0s before BuffExpires(POWERTORRENT 0) Texture(Ability_rogue_dirtydeeds)
			}
		}
		#if List(cd5 t13) Spell(DARKMOONVOLCANO)
		if List(cd5 t13)
		{
			unless BuffPresent(VOLCANICDESTROUCTION)
			{
				if 0s before BuffGain(VOLCANICDESTROUCTION 50) Item(DARKMOONVOLCANO)
			}
			if BuffPresent(VOLCANICDESTROUCTION) 
			{
				if 0s before BuffExpires(VOLCANICDESTROUCTION 0) Texture(spell_lightning_lightningbolt01)
			}
		}
		#if List(cd5 t14) Spell(NREVELATION)
		if List(cd5 t14)
		{
			unless BuffPresent(NREVELATION)
			{
				if 0s before BuffGain(NREVELATION 90) Item(NTHERALIONSMIRROR)
			}
			if BuffPresent(NREVELATION) 
			{
				if 0s before BuffExpires(NREVELATION 0) Texture(spell_arcane_blink)
			}
		}
		#if List(cd5 t15) Spell(HREVELATION)
		if List(cd5 t15)
		{
			unless BuffPresent(HREVELATION)
			{
				if 0s before BuffGain(HREVELATION 90) Item(HTHERALIONSMIRROR)
			}
			if BuffPresent(HREVELATION) 
			{
				if 0s before BuffExpires(HREVELATION 0) Texture(spell_arcane_blink)
			}
		}
		if List(cd5 t16) Item(Trinket0Slot usable=1)
		if List(cd5 t17) Item(Trinket1Slot usable=1)
    }
}