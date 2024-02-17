# Notes
  # lockInventory determines the number of free slots including:
    # 0 (all free)
    # 1 (all locked)
    # 2 (1-4 hotbar free)
    # 3 (all free and chekc items for expedition)

# Adjust Scores
execute if score lockInventory GameStatus matches 1 run scoreboard players set lockedSlotsMax GameStatus 36
execute if score lockInventory GameStatus matches 2 run scoreboard players set lockedSlotsMax GameStatus 32

# Count Items
execute store result score lockedSlots GameStatus run clear @s minecraft:minecart 0

# Lock Slots 
  # Incorrect Count
  execute if score lockedSlots GameStatus < lockedSlotsMax GameStatus run function mc:utility/inventory/lock_inventory_fill
  execute if score lockedSlots GameStatus > lockedSlotsMax GameStatus run function mc:utility/inventory/lock_inventory_fill
  # Slot Breach
  execute if score lockInventory GameStatus matches 2 if entity @s[nbt={Inventory:[{Slot:0b,tag:{locked:1b}}]}] run function mc:utility/inventory/lock_inventory_fill
  execute if score lockInventory GameStatus matches 2 if entity @s[nbt={Inventory:[{Slot:1b,tag:{locked:1b}}]}] run function mc:utility/inventory/lock_inventory_fill
  execute if score lockInventory GameStatus matches 2 if entity @s[nbt={Inventory:[{Slot:2b,tag:{locked:1b}}]}] run function mc:utility/inventory/lock_inventory_fill
  execute if score lockInventory GameStatus matches 2 if entity @s[nbt={Inventory:[{Slot:3b,tag:{locked:1b}}]}] run function mc:utility/inventory/lock_inventory_fill