## Daily Story
## data modify block ~ ~ ~ Items insert 0 value {Slot:10b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:16,isMenu:1b,page:0,selection:7,display:{Name:'{"text":"Give soup","color":"gray","bold":true}',Lore:['{"text":"abcd \\n abcd,abcd","color":"dark_gray","underlined":true}']}}}

# Show Bundles
  # Gained
  data modify block ~ ~ ~ Items insert 0 value {Slot:3b,id:"minecraft:lime_stained_glass_pane",Count:1b,tag:{isMenu:1b,page:0,selection:0,display:{Name:'{"text":"Items Gained","color":"gray","bold":true}'}}}
  execute if data storage minecraft:bundles itemsGained run data modify block ~ ~ ~ Items insert 0 from storage minecraft:bundles itemsGained
  # Lost
  data modify block ~ ~ ~ Items insert 0 value {Slot:12b,id:"minecraft:red_stained_glass_pane",Count:1b,tag:{isMenu:1b,page:0,selection:0,display:{Name:'{"text":"Items Lost","color":"gray","bold":true}'}}}
  execute if data storage minecraft:bundles itemsLost run data modify block ~ ~ ~ Items insert 0 from storage minecraft:bundles itemsLost
  execute if data storage minecraft:bundles charactersLost run data modify block ~ ~ ~ Items insert 0 from storage minecraft:bundles charactersLost

# Page Buttons
  # Next
  data modify block ~ ~ ~ Items insert 0 value {Slot:26b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:30,isMenu:1b,page:0,selection:1,display:{Name:'{"text":"Goto feeding","color":"gray","bold":true}',Lore:['{"text":"Click to continue","color":"dark_gray","underlined":true}']}}}