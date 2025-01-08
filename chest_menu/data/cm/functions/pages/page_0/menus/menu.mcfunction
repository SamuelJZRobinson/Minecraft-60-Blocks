## Daily Story
## data modify block -8 -48 -9 Items insert 0 value {Slot:10b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:16,isMenu:1b,page:0,selection:7,display:{Name:'{"text":"Give soup","color":"gray","bold":true}',Lore:['{"text":"abcd \\n abcd,abcd","color":"dark_gray","underlined":true}']}}}

# Show Item Bundles
  # Items Gained
  data modify block -8 -48 -9 Items insert 0 value {Slot:3b,id:"minecraft:lime_stained_glass_pane",Count:1b,tag:{isMenu:1b,page:0,selection:0,display:{Name:'{"text":"Items Gained","color":"gray","bold":true}'}}}
  execute if data storage minecraft:bundles bunkerItems unless data storage minecraft:bundles bunkerItems{Slot:0b} run data modify block -8 -48 -9 Items insert 0 from storage minecraft:bundles bunkerItems
  execute if data storage minecraft:bundles suitcaseItems unless data storage minecraft:bundles suitcaseItems{Slot:0b} run data modify block -8 -48 -9 Items insert 0 from storage minecraft:bundles suitcaseItems
  execute if data storage minecraft:bundles eventItems unless data storage minecraft:bundles eventItems{Slot:0b} run data modify block -8 -48 -9 Items insert 0 from storage minecraft:bundles eventItems
  execute if data storage minecraft:bundles expeditionLootItems unless data storage minecraft:bundles expeditionLootItems{Slot:0b} run data modify block -8 -48 -9 Items insert 0 from storage minecraft:bundles expeditionLootItems
  # Items Lost
  data modify block -8 -48 -9 Items insert 0 value {Slot:12b,id:"minecraft:red_stained_glass_pane",Count:1b,tag:{isMenu:1b,page:0,selection:0,display:{Name:'{"text":"Items Lost","color":"gray","bold":true}'}}}
  execute if data storage minecraft:bundles crazyLostItems unless data storage minecraft:bundles crazyLostItems{Slot:0b} run data modify block -8 -48 -9 Items insert 0 from storage minecraft:bundles crazyLostItems
  execute if data storage minecraft:bundles eventLostItems unless data storage minecraft:bundles eventLostItems{Slot:0b} run data modify block -8 -48 -9 Items insert 0 from storage minecraft:bundles eventLostItems
  execute if data storage minecraft:bundles expeditionLostItems unless data storage minecraft:bundles expeditionLostItems{Slot:0b} run data modify block -8 -48 -9 Items insert 0 from storage minecraft:bundles expeditionLostItems
  execute if data storage minecraft:bundles familyLostItems unless data storage minecraft:bundles familyLostItems{Slot:0b} run data modify block -8 -48 -9 Items insert 0 from storage minecraft:bundles familyLostItems

# Page Buttons
  # Next
  data modify block -8 -48 -9 Items insert 0 value {Slot:26b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:30,isMenu:1b,page:0,selection:1,display:{Name:'{"text":"Goto feeding","color":"gray","bold":true}',Lore:['{"text":"Click to continue","color":"dark_gray","underlined":true}']}}}