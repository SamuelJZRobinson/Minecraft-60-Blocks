# Select Choices
execute if score selection MenuMain matches 4 run scoreboard players set choice MenuEvent 1
execute if score selection MenuMain matches 5 run scoreboard players set choice MenuEvent 2
execute if score selection MenuMain matches 6 run scoreboard players set choice MenuEvent 3

# Update GUI
  # 1: Clean Gun
    # Toggle
    execute if score choice MenuEvent matches 1 run data modify block 0 54 29 Items insert 0 value {Slot:12b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:10,isMenu:1b,page:3,selection:7,display:{Name:'{"text":"Clean gun","color":"gray","bold":true}'}}}
    execute if score choice MenuEvent matches 0.. unless score gun ItemsBunker matches 0 run data modify block 0 54 29 Items insert 0 value {Slot:12b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:70,isMenu:1b,page:3,selection:4,display:{Name:'{"text":"Ignore gun","color":"gray","bold":true}',Lore:['{"text":"Click to clean gun,"color":"dark_gray","underlined":true}']}}}
    # Lock
    execute if score gun ItemsBunker matches 0 run data modify block 0 54 29 Items insert 0 value {Slot:12b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:96,isMenu:1b,page:3,selection:0,display:{Name:'{"text":"Locked","color":"red","bold":true}',Lore:['{"text":"Requires gun","color":"dark_red"}']}}}
  # 2: Play Flashlight Shadow Bunnies
    # Toggle
    execute if score choice MenuEvent matches 2 run data modify block 0 54 29 Items insert 0 value {Slot:13b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:8,isMenu:1b,page:3,selection:7,display:{Name:'{"text":"Play shadow bunnies","color":"gray","bold":true}'}}}
    execute if score choice MenuEvent matches 0.. unless score flashlight ItemsBunker matches 0 run data modify block 0 54 29 Items insert 0 value {Slot:13b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:68,isMenu:1b,page:3,selection:5,display:{Name:'{"text":"Ignore flashlight","color":"gray","bold":true}',Lore:['{"text":"Click to play shadow bunnies,"color":"dark_gray","underlined":true}']}}}
    # Lock
    execute if score flashlight ItemsBunker matches 0 run data modify block 0 54 29 Items insert 0 value {Slot:13b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:94,isMenu:1b,page:3,selection:0,display:{Name:'{"text":"Locked","color":"red","bold":true}',Lore:['{"text":"Requires flashlight","color":"dark_red"}']}}}
  # 3: Listen To Radio Radio
    # Toggle
    execute if score choice MenuEvent matches 3 run data modify block 0 54 29 Items insert 0 value {Slot:14b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:15,isMenu:1b,page:3,selection:7,display:{Name:'{"text":"Listen to the radio","color":"gray","bold":true}'}}}
    execute if score choice MenuEvent matches 0.. unless score radio ItemsBunker matches 0 run data modify block 0 54 29 Items insert 0 value {Slot:14b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:75,isMenu:1b,page:3,selection:6,display:{Name:'{"text":"Ignore radio","color":"gray","bold":true}',Lore:['{"text":"Click to listen to the radio,"color":"dark_gray","underlined":true}']}}}
    # Lock
    execute if score radio ItemsBunker matches 0 run data modify block 0 54 29 Items insert 0 value {Slot:14b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:101,isMenu:1b,page:3,selection:0,display:{Name:'{"text":"Locked","color":"red","bold":true}',Lore:['{"text":"Requires radio","color":"dark_red"}']}}}

# Output
scoreboard players operation event15Choice AtomicDrill = choice MenuEvent
execute if score submit MenuEvent matches 1 if score doPovExpedition Settings matches 0 if score choice MenuEvent matches 0 run give @p[team=Player] written_book{dailyStory:1b,title:"Journal",author:"BlackeyeI",generation:0,pages:['[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nYou will be delighted to hear that your expedition has ended. Occasionally those you send to the surface may bring back more than you bargained for, including injuries and illnesses. In this case, they fell victim to loose soil and gashed their elbow on rubble.","bold":false}]','[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nWhile left untreated open wounds will eventually fester and cause sickness. Fortunately, with the presence of a medkit, we can administer its contents while rationing to restore them to perfect health. But be warned that it will only treat one person.","bold":false}]','[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nOn another note, I\'m sure you understand the bunker will descend into chaos if left alone. One adult must be present to manage mischief and fend off threats. If only one survivor remains, there is a risk that outsiders will gladly make it their home when unattended.","bold":false}]','[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nSeeing that today was quite busy, give yourself time to rest. So far, you are doing great and well on your way to leaving this foxhole forever, but do not quote me on that.","bold":false}]']} 1
execute if score submit MenuEvent matches 1 if score doPovExpedition Settings matches 0 if score choice MenuEvent matches 1 run give @p[team=Player] written_book{dailyStory:1b,title:"Journal",author:"BlackeyeI",generation:0,pages:['[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nArmed with .30-06 calibre rounds, the bolt-action Springfield Sporter is the ideal weapon to avert attacks from bandits and oversized insects with its superior range.","bold":false}]','[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nYou will be delighted to hear that your expedition has ended. Occasionally those you send to the surface may bring back more than you bargained for, including injuries and illnesses. In this case, they fell victim to loose soil and gashed their elbow on rubble.","bold":false}]','[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nWhile left untreated open wounds will eventually fester and cause sickness. Fortunately, with the presence of a medkit, we can administer its contents while rationing to restore them to perfect health. But be warned that it will only treat one person.","bold":false}]','[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nOn another note, I\'m sure you understand the bunker will descend into chaos if left alone. One adult must be present to manage mischief and fend off threats. If only one survivor remains, there is a risk that outsiders will gladly make it their home when unattended.","bold":false}]','[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nSeeing that today was quite busy, give yourself time to rest. So far, you are doing great and well on your way to leaving this foxhole forever, but do not quote me on that.","bold":false}]']} 1
execute if score submit MenuEvent matches 1 if score doPovExpedition Settings matches 0 if score choice MenuEvent matches 2 run give @p[team=Player] written_book{dailyStory:1b,title:"Journal",author:"BlackeyeI",generation:0,pages:['[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nBesides making light of dark situations, a flashlight is a supportive tool that allows you to signal military aircraft and safely investigate poorly lit locations.","bold":false}]','[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nYou will be delighted to hear that your expedition has ended. Occasionally those you send to the surface may bring back more than you bargained for, including injuries and illnesses. In this case, they fell victim to loose soil and gashed their elbow on rubble.","bold":false}]','[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nWhile left untreated open wounds will eventually fester and cause sickness. Fortunately, with the presence of a medkit, we can administer its contents while rationing to restore them to perfect health. But be warned that it will only treat one person.","bold":false}]','[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nOn another note, I\'m sure you understand the bunker will descend into chaos if left alone. One adult must be present to manage mischief and fend off threats. If only one survivor remains, there is a risk that outsiders will gladly make it their home when unattended.","bold":false}]','[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nSeeing that today was quite busy, give yourself time to rest. So far, you are doing great and well on your way to leaving this foxhole forever, but do not quote me on that.","bold":false}]']} 1
execute if score submit MenuEvent matches 1 if score doPovExpedition Settings matches 0 if score choice MenuEvent matches 3 run give @p[team=Player] written_book{dailyStory:1b,title:"Journal",author:"BlackeyeI",generation:0,pages:['[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\n♪ At night, myself to sleep I sing\\n\\nTo my old tin hat I cling\\n\\nI have to use it now for everything\\n\\nDown on the Maginot Line. ♪","bold":false}]','[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nYou will be delighted to hear that your expedition has ended. Occasionally those you send to the surface may bring back more than you bargained for, including injuries and illnesses. In this case, they fell victim to loose soil and gashed their elbow on rubble.","bold":false}]','[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nWhile left untreated open wounds will eventually fester and cause sickness. Fortunately, with the presence of a medkit, we can administer its contents while rationing to restore them to perfect health. But be warned that it will only treat one person.","bold":false}]','[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nOn another note, I\'m sure you understand the bunker will descend into chaos if left alone. One adult must be present to manage mischief and fend off threats. If only one survivor remains, there is a risk that outsiders will gladly make it their home when unattended.","bold":false}]','[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nSeeing that today was quite busy, give yourself time to rest. So far, you are doing great and well on your way to leaving this foxhole forever, but do not quote me on that.","bold":false}]']} 1