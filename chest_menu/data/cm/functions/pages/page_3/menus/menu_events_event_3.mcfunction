# Toggle Option
execute if score selection MenuMain matches 4 run scoreboard players set choice MenuEvent 0
execute if score selection MenuMain matches 5 run scoreboard players set choice MenuEvent 1

# Update GUI
  # 0: No, ignore imposter
  execute if score choice MenuEvent matches 0 run data modify block -8 -48 -9 Items insert 0 value {Slot:12b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:59,isMenu:1b,page:3,selection:4,display:{Name:'{"text":"Ignore Outsider","color":"gray","bold":true}'}}}
  execute if score choice MenuEvent matches 1 run data modify block -8 -48 -9 Items insert 0 value {Slot:12b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:60,isMenu:1b,page:3,selection:4,display:{Name:'{"text":"Ignore Outsider","color":"gray","bold":true}',Lore:['{"text":"Click to ignore","color":"dark_gray","underlined":true}']}}}
  # 1: Yes, invite imposter
  execute if score choice MenuEvent matches 1 run data modify block -8 -48 -9 Items insert 0 value {Slot:14b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:57,isMenu:1b,page:3,selection:5,display:{Name:'{"text":"Invite Outsider","color":"gray","bold":true}'}}}
  execute if score choice MenuEvent matches 0 run data modify block -8 -48 -9 Items insert 0 value {Slot:14b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:58,isMenu:1b,page:3,selection:5,display:{Name:'{"text":"Invite Outsider","color":"gray","bold":true}',Lore:['{"text":"Click to invite","color":"dark_gray","underlined":true}']}}}

# Output
execute if score submit MenuEvent matches 1 if score choice MenuEvent matches 0 run give @p[team=Player] written_book{dailyStory:1b,title:"Journal",author:"BlackeyeI",generation:0,pages:['[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nIt is good to see that you are heeding my instructions. The person you heard before was an imposter with malicious intent. If you invited them inside, they would have seized your possessions or even your lives! While counting sheep in your head, the sudden","bold":false}]','[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nsound of two knocks from beyond the door startled your concentration. After questioning the intent of whoever was outside, the voice of a young man explained that a rescue team had arrived to escort you. Do you open the door?","bold":false}]']} 1
execute if score submit MenuEvent matches 1 if score choice MenuEvent matches 1 run function cm:pages/page_3/clear/clear_bunker_items
execute if score submit MenuEvent matches 1 if score choice MenuEvent matches 1 run give @p[team=Player] written_book{dailyStory:1b,title:"Journal",author:"BlackeyeI",generation:0,pages:['[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nThat foolish decision could have sealed your fate! Remember, you have no obligation to open the door to outsiders. Even a commie spy would have done better listening to my instructions and know full well that I said two knocks!","bold":false}]','[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nNo matter how insignificant commands seem, they all require the utmost care! Otherwise, dreadful events like what you have witnessed today will repeat themselves. Next time memorize every detail, or worse things may happen. Adieu, crew! While counting sheep in","bold":false}]','[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nyour head, the sudden sound of two knocks from beyond the door startled your concentration. After questioning the intent of whoever was outside, the voice of a young man explained that a rescue team had arrived to escort you. Do you open the door?","bold":false}]']} 1