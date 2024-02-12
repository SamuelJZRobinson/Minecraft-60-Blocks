# Notes
  # The custom character head is a saddle so each hotbar slot must be cleaned separately

# Special Effects
execute if score bunkerSide GameStatus matches 0 run particle explosion 37.50 65.00 -6.50 0 0 0 1 1 normal
execute if score bunkerSide GameStatus matches 1 run particle explosion 10.65 65.00 -6.50 0 0 0 1 1 normal
playsound minecraft:item.armor.equip_netherite player @s ~ ~ ~ 1 0.5 1

# Copy Hotbar From Player
execute if score fullSlots GameStatus matches 1.. as @p[team=Playing] at @s run function mc:timers/scavenge/get_player_hotbar

# Hide Inventory Capacity Warning
title @s actionbar ""

# Forcefully Shut
execute if score bunkerSide GameStatus matches 0 run setblock 37 64 -7 red_shulker_box{CustomName:'{"text":"Salvage Crate"}'} destroy
execute if score bunkerSide GameStatus matches 1 run setblock 10 64 -7 red_shulker_box{CustomName:'{"text":"Salvage Crate"}'} destroy

# Make Items Collectable
execute if score fullSlots GameStatus matches 1.. as @e[type=#mc:mob_slot_limit,team=NoRoom] run data modify entity @s Invulnerable set value 0b
execute if score fullSlots GameStatus matches 1.. as @e[team=NoRoom] run team join Item

# Refresh Score
scoreboard players set fullSlots GameStatus 0
scoreboard players reset @s OpenShulkerBox