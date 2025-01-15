# Gear
  # Slot 1
    # Lock Slot
    execute if score itemCount ItemsBunker matches 0 run scoreboard players set slotOne MenuExplore -1
    execute if score characterSelect MenuExplore matches 3 run scoreboard players set slotOne MenuExplore -1
    # Refresh Cycle If Items Exist
    execute unless score characterSelect MenuExplore matches 3 if score itemCount ItemsBunker matches 1.. run function cm:pages/page_2/menus/menu_slots_slot_1
    # Lock Slots (After Refresh)
    execute if score slotOne MenuExplore matches -1 run loot replace block ~ ~ ~ container.9 loot cm:chests/locked_no_items

  # Slot 2
    # Lock Slot
    execute if score itemCount ItemsBunker matches ..1 run scoreboard players set slotTwo MenuExplore -1
    execute if score characterSelect MenuExplore matches 3 run scoreboard players set slotTwo MenuExplore -1
    execute if score slotTwo MenuExplore matches -1 run loot replace block ~ ~ ~ container.10 loot cm:chests/locked_no_items
    execute if score suitcase ItemsBunker matches 0 run scoreboard players set slotTwo MenuExplore 0
    execute if score slotTwo MenuExplore matches 0 run loot replace block ~ ~ ~ container.10 loot cm:chests/locked_no_suitcase
    # Restart Cycle If Items Exist And Suitcase Is Active
    execute if score itemCount ItemsBunker matches 2.. if score slotOne MenuExplore matches 2 run function cm:pages/page_2/menus/menu_slots_slot_2

  # Slot 3
    # Lock Slot
    execute if score itemCount ItemsBunker matches ..2 run scoreboard players set slotThree MenuExplore -1
    execute if score characterSelect MenuExplore matches 3 run scoreboard players set slotThree MenuExplore -1
    execute if score slotThree MenuExplore matches -1 run loot replace block ~ ~ ~ container.11 loot cm:chests/locked_no_items
    execute if score suitcase ItemsBunker matches 0 run scoreboard players set slotThree MenuExplore 0
    execute if score slotThree MenuExplore matches 0 run loot replace block ~ ~ ~ container.11 loot cm:chests/locked_no_suitcase
    # Restart Cycle If Items Exist And Suitcase Is Active
    execute if score itemCount ItemsBunker matches 3.. if score slotOne MenuExplore matches 2 run function cm:pages/page_2/menus/menu_slots_slot_3

  # Slot 4
    # Lock Slot
    execute if score itemCount ItemsBunker matches ..3 run scoreboard players set slotFour MenuExplore -1
    execute if score characterSelect MenuExplore matches 3 run scoreboard players set slotFour MenuExplore -1
    execute if score slotFour MenuExplore matches -1 run loot replace block ~ ~ ~ container.12 loot cm:chests/locked_no_items
    execute if score suitcase ItemsBunker matches 0 run scoreboard players set slotFour MenuExplore 0
    execute if score slotFour MenuExplore matches 0 run loot replace block ~ ~ ~ container.12 loot cm:chests/locked_no_suitcase
    # Restart Cycle If Items Exist And Suitcase Is Active
    execute if score itemCount ItemsBunker matches 4.. if score slotOne MenuExplore matches 2 run function cm:pages/page_2/menus/menu_slots_slot_4