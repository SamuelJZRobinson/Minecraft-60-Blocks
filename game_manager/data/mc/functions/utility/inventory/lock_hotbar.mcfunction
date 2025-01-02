# Lock Hotbar
item replace entity @s hotbar.0 with red_stained_glass_pane{display:{Name:'{"text":"Locked","color":"red"}'},locked:1b} 1
item replace entity @s hotbar.1 with red_stained_glass_pane{display:{Name:'{"text":"Locked","color":"red"}'},locked:1b} 1
item replace entity @s hotbar.2 with red_stained_glass_pane{display:{Name:'{"text":"Locked","color":"red"}'},locked:1b} 1
item replace entity @s hotbar.3 with red_stained_glass_pane{display:{Name:'{"text":"Locked","color":"red"}'},locked:1b} 1

# Cleanup Hotbar 0 to 3
# execute if score mode PlayerLockInventory matches 2 run item replace entity @s[nbt={Inventory:[{Slot:0b,tag:{locked:1b}}]}] hotbar.0 with minecraft:air
# execute if score mode PlayerLockInventory matches 2 run item replace entity @s[nbt={Inventory:[{Slot:1b,tag:{locked:1b}}]}] hotbar.1 with minecraft:air
# execute if score mode PlayerLockInventory matches 2 run item replace entity @s[nbt={Inventory:[{Slot:2b,tag:{locked:1b}}]}] hotbar.2 with minecraft:air
# execute if score mode PlayerLockInventory matches 2 run item replace entity @s[nbt={Inventory:[{Slot:3b,tag:{locked:1b}}]}] hotbar.3 with minecraft:air