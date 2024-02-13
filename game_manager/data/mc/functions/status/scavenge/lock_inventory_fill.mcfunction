# Lock Inventory Slots 0(9b) to 26(35b)
loot replace entity @s inventory.0 loot lt_custom:entities/locked_inventory
loot replace entity @s inventory.1 loot lt_custom:entities/locked_inventory
loot replace entity @s inventory.2 loot lt_custom:entities/locked_inventory
loot replace entity @s inventory.3 loot lt_custom:entities/locked_inventory
loot replace entity @s inventory.4 loot lt_custom:entities/locked_inventory
loot replace entity @s inventory.5 loot lt_custom:entities/locked_inventory
loot replace entity @s inventory.6 loot lt_custom:entities/locked_inventory
loot replace entity @s inventory.7 loot lt_custom:entities/locked_inventory
loot replace entity @s inventory.8 loot lt_custom:entities/locked_inventory
loot replace entity @s inventory.9 loot lt_custom:entities/locked_inventory
loot replace entity @s inventory.10 loot lt_custom:entities/locked_inventory
loot replace entity @s inventory.11 loot lt_custom:entities/locked_inventory
loot replace entity @s inventory.12 loot lt_custom:entities/locked_inventory
loot replace entity @s inventory.13 loot lt_custom:entities/locked_inventory
loot replace entity @s inventory.14 loot lt_custom:entities/locked_inventory
loot replace entity @s inventory.15 loot lt_custom:entities/locked_inventory
loot replace entity @s inventory.16 loot lt_custom:entities/locked_inventory
loot replace entity @s inventory.17 loot lt_custom:entities/locked_inventory
loot replace entity @s inventory.18 loot lt_custom:entities/locked_inventory
loot replace entity @s inventory.19 loot lt_custom:entities/locked_inventory
loot replace entity @s inventory.20 loot lt_custom:entities/locked_inventory
loot replace entity @s inventory.21 loot lt_custom:entities/locked_inventory
loot replace entity @s inventory.22 loot lt_custom:entities/locked_inventory
loot replace entity @s inventory.23 loot lt_custom:entities/locked_inventory
loot replace entity @s inventory.24 loot lt_custom:entities/locked_inventory
loot replace entity @s inventory.25 loot lt_custom:entities/locked_inventory
loot replace entity @s inventory.26 loot lt_custom:entities/locked_inventory

# Lock Hotbar Slots 0(0b) to 8(8b)
execute if score lockInventory GameStatus matches 1 run loot replace entity @s hotbar.0 loot lt_custom:entities/locked_inventory
execute if score lockInventory GameStatus matches 1 run loot replace entity @s hotbar.1 loot lt_custom:entities/locked_inventory
execute if score lockInventory GameStatus matches 1 run loot replace entity @s hotbar.2 loot lt_custom:entities/locked_inventory
execute if score lockInventory GameStatus matches 1 run loot replace entity @s hotbar.3 loot lt_custom:entities/locked_inventory
loot replace entity @s hotbar.4 loot lt_custom:entities/locked_inventory
loot replace entity @s hotbar.5 loot lt_custom:entities/locked_inventory
loot replace entity @s hotbar.6 loot lt_custom:entities/locked_inventory
loot replace entity @s hotbar.7 loot lt_custom:entities/locked_inventory

# Cleanup Slots 0(0b) to 3(3b)
execute if score lockInventory GameStatus matches 2 run item replace entity @s[nbt={Inventory:[{Slot:0b,tag:{locked:1b}}]}] hotbar.0 with minecraft:air
execute if score lockInventory GameStatus matches 2 run item replace entity @s[nbt={Inventory:[{Slot:1b,tag:{locked:1b}}]}] hotbar.1 with minecraft:air
execute if score lockInventory GameStatus matches 2 run item replace entity @s[nbt={Inventory:[{Slot:2b,tag:{locked:1b}}]}] hotbar.2 with minecraft:air
execute if score lockInventory GameStatus matches 2 run item replace entity @s[nbt={Inventory:[{Slot:3b,tag:{locked:1b}}]}] hotbar.3 with minecraft:air

# Offhand Slot (-106b)
loot replace entity @s[nbt=!{Inventory:[{Count:1b,Slot:-106b,tag:{lockedOffhand:1b}}]}] weapon.offhand loot lt_custom:entities/locked_offhand