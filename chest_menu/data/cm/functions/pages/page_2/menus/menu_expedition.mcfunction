# Notes
  # Slot three and four automatically increment if the slots to their left have the same item. Slot three checks slot two, and slot four checks both slot two and three
  # Each character has a unique number, including: 0 (nobody), 1 (Dolores), 2 (Normal Mary), 3 (Mutant Mary), 4 (Ted), and 5 (Timmy)
  # To avoid duplicate items each slot validates itself for every slot left of it, excluding the first slot
  # Only slotOne can have a suitcase and it is the first item for convenience
  # Bunker items are counted with mc:status/manage_cosmetics
  # To keep the game fair Mutant Mary cannot carry items to the surface since she has special abilities

# Character Toggle
  # Dolores
  execute if score alive DoloresStatus matches 1 run function cm:pages/page_2/menus/menu_expedition_dolores
  execute if score alive DoloresStatus matches 0 run data modify block 0 54 29 Items insert 0 value {Slot:0b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:93,isMenu:1b,page:2,selection:0,display:{Name:'{"text":"Locked","color":"red","bold":true}',Lore:['{"text":"Requires Dolores","color":"dark_red"}']}}}
  # Mary
  execute if score alive MaryStatus matches 1 run function cm:pages/page_2/menus/menu_expedition_mary
  execute if score alive MaryStatus matches 0 run data modify block 0 54 29 Items insert 0 value {Slot:1b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:98,isMenu:1b,page:2,selection:0,display:{Name:'{"text":"Locked","color":"red","bold":true}',Lore:['{"text":"Requires Mary","color":"dark_red"}']}}}
  # Ted
  execute if score alive TedStatus matches 1 run function cm:pages/page_2/menus/menu_expedition_ted
  execute if score alive TedStatus matches 0 run data modify block 0 54 29 Items insert 0 value {Slot:2b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:107,isMenu:1b,page:2,selection:0,display:{Name:'{"text":"Locked","color":"red","bold":true}',Lore:['{"text":"Requires Ted","color":"dark_red"}']}}}
  # Timmy
  execute if score alive TimmyStatus matches 1 run function cm:pages/page_2/menus/menu_expedition_timmy
  execute if score alive TimmyStatus matches 0 run data modify block 0 54 29 Items insert 0 value {Slot:3b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:104,isMenu:1b,page:2,selection:0,display:{Name:'{"text":"Locked","color":"red","bold":true}',Lore:['{"text":"Requires Timmy","color":"dark_red"}']}}}

# Map Choice (Mandatory)
  # Neighbourhood
    # Force Without Map
    execute if score map ItemsBunker matches 0 run scoreboard players set mapSelect MenuExplore 2
    # Toggle
    execute if score mapSelect MenuExplore matches 2 run data modify block 0 54 29 Items insert 0 value {Slot:6b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:36,isMenu:1b,page:2,selection:0,display:{Name:'{"text":"Visit neighbourhood","color":"gray","bold":true}'}}}
    execute if score mapSelect MenuExplore matches 0.. run data modify block 0 54 29 Items insert 0 value {Slot:6b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:85,isMenu:1b,page:2,selection:13,display:{Name:'{"text":"Ignore neighbourhood","color":"gray","bold":true}',Lore:['{"text":"Click to visit","color":"dark_gray","underlined":true}']}}}
    # Lore
    data modify block 0 54 29 Items[{Slot:6b}].tag.display.Lore append value '{"text":"Distance: short","color":"dark_green"}'
  # Load Locations
  execute if score map ItemsBunker matches 1 run function cm:pages/page_2/menus/menu_expedition_maps
  execute if score map ItemsBunker matches ..0 run function cm:pages/page_2/menus/menu_expedition_maps_lock

# Gear
  # Slot 1
    # Lock Slot
    execute if score itemCount ItemsBunker matches 0 run scoreboard players set slotOne MenuExplore -1
    execute if score characterSelect MenuExplore matches 3 run scoreboard players set slotOne MenuExplore -1
    # Refresh Cycle If Items Exist
    execute unless score characterSelect MenuExplore matches 3 if score itemCount ItemsBunker matches 1.. run function cm:pages/page_2/menus/menu_expedition_slot_1
    # Lock Slots (After Refresh)
    execute if score slotOne MenuExplore matches -1 run loot replace block 0 54 29 container.9 loot cm:chests/locked_no_items

  # Slot 2
    # Lock Slot
    execute if score itemCount ItemsBunker matches ..1 run scoreboard players set slotTwo MenuExplore -1
    execute if score characterSelect MenuExplore matches 3 run scoreboard players set slotTwo MenuExplore -1
    execute if score slotTwo MenuExplore matches -1 run loot replace block 0 54 29 container.10 loot cm:chests/locked_no_items
    execute if score suitcase ItemsBunker matches 0 run scoreboard players set slotTwo MenuExplore 0
    execute if score slotTwo MenuExplore matches 0 run loot replace block 0 54 29 container.10 loot cm:chests/locked_no_suitcase
    # Restart Cycle If Items Exist And Suitcase Is Active
    execute if score itemCount ItemsBunker matches 2.. if score slotOne MenuExplore matches 2 run function cm:pages/page_2/menus/menu_expedition_slot_2

  # Slot 3
    # Lock Slot
    execute if score itemCount ItemsBunker matches ..2 run scoreboard players set slotThree MenuExplore -1
    execute if score characterSelect MenuExplore matches 3 run scoreboard players set slotThree MenuExplore -1
    execute if score slotThree MenuExplore matches -1 run loot replace block 0 54 29 container.11 loot cm:chests/locked_no_items
    execute if score suitcase ItemsBunker matches 0 run scoreboard players set slotThree MenuExplore 0
    execute if score slotThree MenuExplore matches 0 run loot replace block 0 54 29 container.11 loot cm:chests/locked_no_suitcase
    # Restart Cycle If Items Exist And Suitcase Is Active
    execute if score itemCount ItemsBunker matches 3.. if score slotOne MenuExplore matches 2 run function cm:pages/page_2/menus/menu_expedition_slot_3

  # Slot 4
    # Lock Slot
    execute if score itemCount ItemsBunker matches ..3 run scoreboard players set slotFour MenuExplore -1
    execute if score characterSelect MenuExplore matches 3 run scoreboard players set slotFour MenuExplore -1
    execute if score slotFour MenuExplore matches -1 run loot replace block 0 54 29 container.12 loot cm:chests/locked_no_items
    execute if score suitcase ItemsBunker matches 0 run scoreboard players set slotFour MenuExplore 0
    execute if score slotFour MenuExplore matches 0 run loot replace block 0 54 29 container.12 loot cm:chests/locked_no_suitcase
    # Restart Cycle If Items Exist And Suitcase Is Active
    execute if score itemCount ItemsBunker matches 4.. if score slotOne MenuExplore matches 2 run function cm:pages/page_2/menus/menu_expedition_slot_4