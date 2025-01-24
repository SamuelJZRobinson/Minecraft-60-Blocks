# Settings
scoreboard players set totalOptions MenuEvent 3

# Update GUI
  # Clean Gun
    # Toggle
    data modify block ~ ~ ~ Items insert 0 value {Slot:3b,id:"minecraft:saddle",count:1,components:{"minecraft:custom_name":'{"color":"gray","bold":true,"text":"Clean gun"}',"minecraft:custom_model_data":10,"minecraft:custom_data":{isMenu:1b,page:3,selection:0}}}
    # Lock
    execute if score gun ItemsBunker matches 0 run data modify block ~ ~ ~ Items insert 0 value {Slot:12b,id:"minecraft:saddle",count:1,components:{"minecraft:custom_name":'{"color":"red","bold":true,"text":"Locked"}',"minecraft:lore":['{"color":"dark_red","text":"Need gun"}'],"minecraft:custom_model_data":114,"minecraft:custom_data":{isMenu:1b,page:3,selection:0}}}
  # Flashlight Shadow Bunnies
    # Toggle
    data modify block ~ ~ ~ Items insert 0 value {Slot:4b,id:"minecraft:saddle",count:1,components:{"minecraft:custom_name":'{"color":"gray","bold":true,"text":"Play shadow bunnies"}',"minecraft:custom_model_data":8,"minecraft:custom_data":{isMenu:1b,page:3,selection:0}}}
    # Lock
    execute if score flashlight ItemsBunker matches 0 run data modify block ~ ~ ~ Items insert 0 value {Slot:13b,id:"minecraft:saddle",count:1,components:{"minecraft:custom_name":'{"color":"red","bold":true,"text":"Locked"}',"minecraft:lore":['{"color":"dark_red","text":"Need flashlight"}'],"minecraft:custom_model_data":114,"minecraft:custom_data":{isMenu:1b,page:3,selection:0}}}
  # Listen To Radio
    # Toggle
    data modify block ~ ~ ~ Items insert 0 value {Slot:5b,id:"minecraft:saddle",count:1,components:{"minecraft:custom_name":'{"color":"gray","bold":true,"text":"Listen to the radio"}',"minecraft:custom_model_data":15,"minecraft:custom_data":{isMenu:1b,page:3,selection:0}}}
    # Lock
    execute if score radio ItemsBunker matches 0 run data modify block ~ ~ ~ Items insert 0 value {Slot:14b,id:"minecraft:saddle",count:1,components:{"minecraft:custom_name":'{"color":"red","bold":true,"text":"Locked"}',"minecraft:lore":['{"color":"dark_red","text":"Need radio"}'],"minecraft:custom_model_data":114,"minecraft:custom_data":{isMenu:1b,page:3,selection:0}}}

# Output
scoreboard players operation event15Choice AtomicDrill = choice MenuEvent
execute if score submit MenuEvent matches 1 if score doInPersonExpedition Settings matches 0 if score choice MenuEvent matches 0 run give @s written_book[custom_data={dailyStory:1b},written_book_content={title:"Journal",author:"",pages:['[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nYou will be delighted to hear that your expedition has ended. Occasionally those you send to the surface may bring back more than you bargained for, including injuries and illnesses. In this case, they fell victim to loose soil and gashed their elbow on rubble.","bold":false}]','[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nWhile left untreated open wounds will eventually fester and cause sickness. Fortunately, with the presence of a medkit, we can administer its contents while rationing to restore them to perfect health. But be warned that it will only treat one person.","bold":false}]','[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nOn another note, I\'m sure you understand the bunker will descend into chaos if left alone. One adult must be present to manage mischief and fend off threats. If only one survivor remains, there is a risk that outsiders will gladly make it their home when unattended.","bold":false}]','[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nSeeing that today was quite busy, give yourself time to rest. So far, you are doing great and well on your way to leaving this foxhole forever, but do not quote me on that.","bold":false}]']}] 1
execute if score submit MenuEvent matches 1 if score doInPersonExpedition Settings matches 0 if score choice MenuEvent matches 1 run give @s written_book[custom_data={dailyStory:1b},written_book_content={title:"Journal",author:"",pages:['[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nArmed with .30-06 calibre rounds, the bolt-action Springfield Sporter is the ideal weapon to avert attacks from bandits and oversized insects with its superior range.","bold":false}]','[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nYou will be delighted to hear that your expedition has ended. Occasionally those you send to the surface may bring back more than you bargained for, including injuries and illnesses. In this case, they fell victim to loose soil and gashed their elbow on rubble.","bold":false}]','[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nWhile left untreated open wounds will eventually fester and cause sickness. Fortunately, with the presence of a medkit, we can administer its contents while rationing to restore them to perfect health. But be warned that it will only treat one person.","bold":false}]','[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nOn another note, I\'m sure you understand the bunker will descend into chaos if left alone. One adult must be present to manage mischief and fend off threats. If only one survivor remains, there is a risk that outsiders will gladly make it their home when unattended.","bold":false}]','[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nSeeing that today was quite busy, give yourself time to rest. So far, you are doing great and well on your way to leaving this foxhole forever, but do not quote me on that.","bold":false}]']}] 1
execute if score submit MenuEvent matches 1 if score doInPersonExpedition Settings matches 0 if score choice MenuEvent matches 2 run give @s written_book[custom_data={dailyStory:1b},written_book_content={title:"Journal",author:"",pages:['[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nBesides making light of dark situations, a flashlight is a supportive tool that allows you to signal military aircraft and safely investigate poorly lit locations.","bold":false}]','[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nYou will be delighted to hear that your expedition has ended. Occasionally those you send to the surface may bring back more than you bargained for, including injuries and illnesses. In this case, they fell victim to loose soil and gashed their elbow on rubble.","bold":false}]','[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nWhile left untreated open wounds will eventually fester and cause sickness. Fortunately, with the presence of a medkit, we can administer its contents while rationing to restore them to perfect health. But be warned that it will only treat one person.","bold":false}]','[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nOn another note, I\'m sure you understand the bunker will descend into chaos if left alone. One adult must be present to manage mischief and fend off threats. If only one survivor remains, there is a risk that outsiders will gladly make it their home when unattended.","bold":false}]','[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nSeeing that today was quite busy, give yourself time to rest. So far, you are doing great and well on your way to leaving this foxhole forever, but do not quote me on that.","bold":false}]']}] 1
execute if score submit MenuEvent matches 1 if score doInPersonExpedition Settings matches 0 if score choice MenuEvent matches 3 run give @s written_book[custom_data={dailyStory:1b},written_book_content={title:"Journal",author:"",pages:['[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\n♪ At night, myself to sleep I sing\\n\\nTo my old tin hat I cling\\n\\nI have to use it now for everything\\n\\nDown on the Maginot Line. ♪","bold":false}]','[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nYou will be delighted to hear that your expedition has ended. Occasionally those you send to the surface may bring back more than you bargained for, including injuries and illnesses. In this case, they fell victim to loose soil and gashed their elbow on rubble.","bold":false}]','[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nWhile left untreated open wounds will eventually fester and cause sickness. Fortunately, with the presence of a medkit, we can administer its contents while rationing to restore them to perfect health. But be warned that it will only treat one person.","bold":false}]','[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nOn another note, I\'m sure you understand the bunker will descend into chaos if left alone. One adult must be present to manage mischief and fend off threats. If only one survivor remains, there is a risk that outsiders will gladly make it their home when unattended.","bold":false}]','[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nSeeing that today was quite busy, give yourself time to rest. So far, you are doing great and well on your way to leaving this foxhole forever, but do not quote me on that.","bold":false}]']}] 1