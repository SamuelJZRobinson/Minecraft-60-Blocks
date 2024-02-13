# Notes
  # bunkerSide is managed by mc:states/stages/5_setup_house/place/floorplans/clone/clone_floorplan1
  ### Item summon scripts are broken since they were grouped into one file.
  ### Character summon scripts might be broken due to a change.

# Task 1 (Goto Hallway Marker)
  # Set Dialogue
  execute if score task AtomicDrill matches 1 run title @a times 0 80 0
  execute if score task AtomicDrill matches 1 run scoreboard players set dialogue AtomicDrill 1
  execute if score task AtomicDrill matches 1 run scoreboard players set dialogueMax AtomicDrill 2
  # Create Marker
  execute if score task AtomicDrill matches 1 positioned 22.50 64.00 -6.50 run function mc:status/particles/spawn_cross_marker
  execute if score task AtomicDrill matches 1 positioned 22.50 66.00 -6.50 run function mc:status/particles/spawn_arrow_marker
  # Remove Effects
  execute if score task AtomicDrill matches 1 run effect clear @p[team=Playing]
  # Add Effects
  execute if score task AtomicDrill matches 1 run effect give @p[team=Playing] speed 999999 1 true

# Task 2 (Goto Living Room Marker)
  # Set Dialogue
  execute if score task AtomicDrill matches 2 run scoreboard players set dialogue AtomicDrill 3
  execute if score task AtomicDrill matches 2 run scoreboard players set dialogueMax AtomicDrill 4
  # Create Marker
  execute if score task AtomicDrill matches 2 positioned 13.50 64.00 5.50 run function mc:status/particles/spawn_cross_marker
  execute if score task AtomicDrill matches 2 positioned 13.50 66.00 5.50 run function mc:status/particles/spawn_arrow_marker

# Task 3 (Find Timmy)
  # Set Dialogue
  execute if score task AtomicDrill matches 3 run scoreboard players set dialogue AtomicDrill 5
  execute if score task AtomicDrill matches 3 run scoreboard players set dialogueMax AtomicDrill 7
  # Spawn Timmy
  execute if score task AtomicDrill matches 3 run function mc:states/stages/5_setup_house/place/characters/spawn_timmy
  execute if score task AtomicDrill matches 3 run data modify entity @e[type=zombie,tag=houseTimmy,limit=1] Invulnerable set value 0b

# Task 4 (Find Soup In The Bathtub)
  # Set Dialogue
  execute if score task AtomicDrill matches 4 run scoreboard players set dialogue AtomicDrill 8
  execute if score task AtomicDrill matches 4 run scoreboard players set dialogueMax AtomicDrill 8
  # Place Soup Can
  execute if score task AtomicDrill matches 4 positioned 22.40 64.00 6.45 run function mc:states/stages/5_setup_house/place/items/spawn/spawn_soup
  execute if score task AtomicDrill matches 4 run data modify entity @e[type=slime,tag=scavengeSoup,limit=1] Invulnerable set value 0b

# Task 5 (Find Water In The Kitchen)
  # Set Dialogue
  execute if score task AtomicDrill matches 5 run scoreboard players set dialogue AtomicDrill 9
  execute if score task AtomicDrill matches 5 run scoreboard players set dialogueMax AtomicDrill 9
  # Place Water Bottle
  execute if score task AtomicDrill matches 5 positioned 27.50 65.00 -14.55 run function mc:states/stages/5_setup_house/place/items/spawn/spawn_water
  execute if score task AtomicDrill matches 5 run data modify entity @e[type=slime,tag=scavengeWater,limit=1] Invulnerable set value 0b

# Task 6 (Salvage Items)
  # Set Dialogue
  execute if score task AtomicDrill matches 6 run scoreboard players set dialogue AtomicDrill 10
  execute if score task AtomicDrill matches 6 run scoreboard players set dialogueMax AtomicDrill 11
  # Create Marker
  execute if score task AtomicDrill matches 6 run scoreboard players set clock Timer 1
  execute if score task AtomicDrill matches 6 run function mc:states/stages/5_setup_house/place/floorplans/spawn/spawn_bunker_indicator

# Task 7 (Find Radio In The Living Room Shelf)
  # Set Dialogue
  execute if score task AtomicDrill matches 7 run scoreboard players set dialogue AtomicDrill 12
  execute if score task AtomicDrill matches 7 run scoreboard players set dialogueMax AtomicDrill 12
  # Place Radio
  execute if score task AtomicDrill matches 7 positioned 19.30 65.00 6.45 run function mc:states/stages/5_setup_house/place/items/spawn/spawn_radio
  execute if score task AtomicDrill matches 7 run data modify entity @e[type=slime,tag=scavengeRadio,limit=1] Invulnerable set value 0b
  execute if score task AtomicDrill matches 7 as @e[type=minecraft:slime,tag=scavengeRadio,limit=1] at @s run teleport @s ~ ~ ~ 90 0
  execute if score task AtomicDrill matches 7 run function mc:states/stages/5_setup_house/place/items/raise/sync_rotation

# Task 8 (Find Gas Mask On Wall)
  # Set Dialogue
  execute if score task AtomicDrill matches 8 run scoreboard players set dialogue AtomicDrill 13
  execute if score task AtomicDrill matches 8 run scoreboard players set dialogueMax AtomicDrill 13
  # Place Gas Mask
  execute if score task AtomicDrill matches 8 positioned 28.50 66.50 -3.25 run function mc:states/stages/5_setup_house/place/items/spawn/spawn_gas_mask
  execute if score task AtomicDrill matches 8 run data modify entity @e[type=slime,tag=scavengeGasMask,limit=1] Invulnerable set value 0b
  execute if score task AtomicDrill matches 8 as @e[type=minecraft:slime,tag=scavengeGasMask,limit=1] at @s run teleport @s ~ ~ ~ -180 0
  execute if score task AtomicDrill matches 8 run function mc:states/stages/5_setup_house/place/items/raise/sync_rotation

# Task 9 (Salvage Items)
  # Set Dialogue
  execute if score task AtomicDrill matches 9 run scoreboard players set dialogue AtomicDrill 14
  execute if score task AtomicDrill matches 9 run scoreboard players set dialogueMax AtomicDrill 14
  # Create Marker
  execute if score task AtomicDrill matches 9 run function mc:states/stages/5_setup_house/place/floorplans/spawn/spawn_bunker_indicator

# Task 10 (Scavenge House)
  # Set Dialogue
  execute if score task AtomicDrill matches 10 run scoreboard players set dialogue AtomicDrill 15
  execute if score task AtomicDrill matches 10 run scoreboard players set dialogueMax AtomicDrill 19
  # House Loadout managed by mc:play/atomic_drill/dialogue_relay_show
  execute if score task AtomicDrill matches 10 run scoreboard players set difficulty Lobby 2

# Task 11 (Failed To Enter Bunker)
  # Set Dialogue
  execute if score task AtomicDrill matches 11 run scoreboard players set dialogue AtomicDrill 20
  execute if score task AtomicDrill matches 11 run scoreboard players set dialogueMax AtomicDrill 24

# Task 12 (Entered Bunker, Feed Characters, Day One)
  # Set Dialogue
  execute if score task AtomicDrill matches 12 run scoreboard players set dialogue AtomicDrill 25
  execute if score task AtomicDrill matches 12 run scoreboard players set dialogueMax AtomicDrill 26
  # Teleport To Bunker
  execute if score task AtomicDrill matches 12 run function mc:play/gamemodes/teleport_to_bunker
  # Give Journal
  execute if score task AtomicDrill matches 12 run give @p[team=Playing] written_book{dailyStory:1b,title:"Journal",author:"BlackeyeI",generation:0,pages:['[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"},"bold":true},{"text":"\\nCongratulations on making it to the shelter! However, treacherous days are ahead. Your survival depends on whatever and whomever you bring with you. As the world burns, you will need to utilize scarce resources. Today your first duty will be distributing rations.","bold":false}]','[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nIf you fail to nourish yourselves, I guarantee that none of you will ever see daylight again. While supplies are plentiful, you can share them with individual family members by clicking their portrait and adjacent icons or with everyone using the icons below.","bold":false}]','[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nSince you do not know the duration of your stay, it is crucial to defer your appetite and hoard supplies. However, everyone must eat at some point. An average person will survive ten days without soup and six days without water!","bold":false}]','[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nSkipping too many meals will also lower your immunity. Now please acquaint yourself with the cold steel around you. Though secure, it is the leading cause of insanity. Endless days in a box filled with the subtle hum of ventilation shafts will muddle anyone\'s","bold":false}]','[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"dau"}},{"text":"\\nthoughts, so keep yourself occupied with activities. Try to get some rest; we will continue training tomorrow. Goodnight.","bold":false}]']} 1

# Task 13 (Feed Characters And Plan Expedition, Day Two)
  # Give Journal
  execute if score task AtomicDrill matches 13 run give @p[team=Playing] written_book{dailyStory:1b,title:"Journal",author:"BlackeyeI",generation:0,pages:['[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"},"bold":true},{"text":"\\nRise and shine! Hopefully, your beds were comfortable. Either way, you will get accustomed to it. Today we shall start by rationing supplies and move on to crucial obstacles. Each day presents the risk that supplies will run out.","bold":false}]','[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nDespite everything having a vital purpose, food and water always remain the top priority for survival. In desperate situations, you may need to plan an expedition and send family members to the surface so that they can locate leftover goodies.","bold":false}]','[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nYou can only send one survivor at a time who is not tired. To keep everyone in top shape, only send healthy individuals with suitable gear to better your odds, such as a gas mask to avoid radioactive fallout and a suitcase to carry three extra items.","bold":false}]','[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nIf you wish to postpone a trip prepared earlier, do not select anyone when asked. During this demonstration, we will skip preparations and jump straight into sending someone courageous into the forsaken wasteland above.","bold":false}]']} 1
  execute if score task AtomicDrill matches 13 run scoreboard players set expeditionPrepared ChestMenuExplore 1

# Task 14 (Feed Thirsty Characters And Event One, Day Three)
  # Force Thirst
  execute if score task AtomicDrill matches 14 run function mc:play/gamemodes/atomic_drill/force_thirst
  # Give Journal
  execute if score task AtomicDrill matches 14 run give @p[team=Playing] written_book{dailyStory:1b,title:"Journal",author:"BlackeyeI",generation:0,pages:['[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"},"bold":true},{"text":"\\nReveille cadets, today things get serious as you address one of many ethical dilemmas destined to arise. As we await the return of your scavenger, we will see how you respond under stress. For now, you will ration food. ","bold":false}]','[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nWe cannot risk anyone dying of dehydration, especially in a training exercise, so please do not hesitate to have your fair share of water. As a proud army man, I know little about the imagination..., only its destruction. Hence, I will ask you to use yours now.","bold":false}]','[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nSuppose that food was in low supply and the family hamster snuck into the shelter. Do you pity the cries of your children or cook him out of desperation to quench that inner urge?","bold":false}]']} 1
  # Set Event
  execute if score task AtomicDrill matches 14 run scoreboard players set event ChestMenuEvent 1

# Task 15 (Event Two, Day Four)
  # Journal Managed By cm:menu/submit/manage_events
  # Set Event
  execute if score task AtomicDrill matches 15 run scoreboard players set event ChestMenuEvent 2

# Task 16 (Character Returns Injured, Day Five)
  # Journal Managed By cm:menu/submit/manage_events
  # Force Expedition Return
  execute if score task AtomicDrill matches 16 run function mc:play/gamemodes/atomic_drill/force_expedition_return

# Task 17 (Advice About Knocking, Day Six)
  # Give Journal
  execute if score task AtomicDrill matches 17 run give @p[team=Playing] written_book{dailyStory:1b,title:"Journal",author:"BlackeyeI",generation:0,pages:['[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nHello again! You might be considering why you are forcing yourselves to stay confined in the shelter. Let me assure you that any thought of leaving is senseless as things are no better in the desolation around you. If nuclear fallout does not lead to your","bold":false}]','[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\ndemise, then surely oversized scorpions will. Your best option is to trust that our boys will rescue you when the time is right. In the meantime, ensure your radio functions as necessary so that you can adhere to instructions transmitted over national broadcasts.","bold":false}]','[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nnational broadcasts. Although rescue will arrive later, you can count on us to keep searching. Sometimes you may be asked to meet with a representative in the wasteland but remember there may be more than soldiers lurking around; there could be bandits or","bold":false}]','[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\ncommies! We cannot begin to fathom what would happen if the reds discovered your whereabouts. We advise that you only open the bunker hatch after hearing two knocks. Do I make myself clear?","bold":false}]']} 1

# Task 18 (Advice About Harsh Circumstances, Day Seven)
  # Give Journal
  execute if score task AtomicDrill matches 18 run give @p[team=Playing] written_book{dailyStory:1b,title:"Journal",author:"BlackeyeI",generation:0,pages:['[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nGreetings sardines. Some days ahead will be particularly harsh and force you to contend with multiple problems simultaneously. Hence, any dull day is a blessing you should capitalize on by planning ahead of disasters.","bold":false}]','[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nAs you recline, think about those commie bastards who are not privileged enough to own an underground fortress; that always motivates me. Every choice you make could return to bite you on the ass. Always manage what you have strategically, whether that means delaying","bold":false}]','[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nresponses to passive threats or evaluating what stays in the bunker. Although this is a mere simulation without consequences, you should expect television programs about the wild west to become an inescapable reality if those dirty bombs dropped tonight.","bold":false}]','[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nRemember to keep an ear out as our extraction team may be closer than you think but remain vigilant since you never know what to expect.","bold":false}]']} 1

# Task 19 (Event Three, Day Eight)
  # Give Journal
  execute if score task AtomicDrill matches 19 run give @p[team=Playing] written_book{dailyStory:1b,title:"Journal",author:"BlackeyeI",generation:0,pages:['[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nWhile passing the time reminiscing about last summer vacation, the sound of three knocks suddenly began pounding from beyond the hatch. It was clear that someone was adamant about gaining your attention.","bold":false}]','[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nAfter approaching the door and questioning their intent, the raspy voice of a middle-aged man explained that a rescue squad was here to escort you to a safer location. Do you open the door?","bold":false}]']} 1
  # Set Event
  execute if score task AtomicDrill matches 19 run scoreboard players set event ChestMenuEvent 3

# Task 20 (Even Four, Day Nine)
  # Journal Managed By cm:menu/submit/manage_events
  # Set Event
  execute if score task AtomicDrill matches 20 run scoreboard players set event ChestMenuEvent 4

# Task 21 (Final Words And Reset, Day Ten)
  # Journal Managed By cm:menu/submit/manage_events
  # Remove Chest Menu
  execute if score task AtomicDrill matches 21 run setblock 0 54 29 minecraft:air
  execute if score task AtomicDrill matches 21 run kill @e[type=minecraft:armor_stand,tag=menuText]
  # Break The Script
  execute if score task AtomicDrill matches 21 run schedule clear mc:play/gamemodes/atomic_drill/task_loop

# Request Dialogue
execute unless score task AtomicDrill matches 13.. run function mc:play/gamemodes/atomic_drill/dialogue_relay

# Debounce Stage
scoreboard players set stage AtomicDrill 1