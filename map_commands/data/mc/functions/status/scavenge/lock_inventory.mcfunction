# Adjust Scores
execute if score lockInventory GameStatus matches 1 run scoreboard players set lockedSlotsMax GameStatus 36
execute if score lockInventory GameStatus matches 2 run scoreboard players set lockedSlotsMax GameStatus 32

# Count Items
execute store result score lockedSlots GameStatus run clear @s minecraft:minecart 0

# Lock Slots 
  # Incorrect Count
  execute if score lockedSlots GameStatus < lockedSlotsMax GameStatus run function mc:status/scavenge/lock_inventory_fill
  execute if score lockedSlots GameStatus > lockedSlotsMax GameStatus run function mc:status/scavenge/lock_inventory_fill
  # Slot Breach
  execute if score lockInventory GameStatus matches 2 if entity @s[nbt={Inventory:[{Slot:0b,tag:{locked:1b}}]}] run function mc:status/scavenge/lock_inventory_fill
  execute if score lockInventory GameStatus matches 2 if entity @s[nbt={Inventory:[{Slot:1b,tag:{locked:1b}}]}] run function mc:status/scavenge/lock_inventory_fill
  execute if score lockInventory GameStatus matches 2 if entity @s[nbt={Inventory:[{Slot:2b,tag:{locked:1b}}]}] run function mc:status/scavenge/lock_inventory_fill
  execute if score lockInventory GameStatus matches 2 if entity @s[nbt={Inventory:[{Slot:3b,tag:{locked:1b}}]}] run function mc:status/scavenge/lock_inventory_fill