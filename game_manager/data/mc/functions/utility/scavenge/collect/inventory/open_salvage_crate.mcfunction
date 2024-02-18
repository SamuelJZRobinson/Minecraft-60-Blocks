# Notes
  # The crate must trigger always when opened to stop players inserting items and queueing delayed item collections.
  # Checking for fullSlots prevents unnecessary computations.

# Crate
  # SFX
  execute if score bunkerSide GameStatus matches 0 run particle explosion 37.50 65.00 -6.50 0 0 0 1 1 normal
  execute if score bunkerSide GameStatus matches 1 run particle explosion 10.65 65.00 -6.50 0 0 0 1 1 normal
  playsound minecraft:item.armor.equip_netherite player @s ~ ~ ~ 1 0.5 1
  # Force Shut
  execute if score bunkerSide GameStatus matches 0 run setblock 37 64 -7 red_shulker_box{CustomName:'{"text":"Salvage Crate"}'} destroy
  execute if score bunkerSide GameStatus matches 1 run setblock 10 64 -7 red_shulker_box{CustomName:'{"text":"Salvage Crate"}'} destroy

# Copy Hotbar
execute if score fullSlots GameStatus matches 1.. as @p[team=Playing] at @s run function mc:utility/scavenge/collect/inventory/get_hotbar

# Hide Inventory Capacity Warning
title @s actionbar ""

# Make Items Collectable
execute if score fullSlots GameStatus matches 1.. as @e[type=#mc:mob_slot_limit,team=NoRoom] run data modify entity @s Invulnerable set value 0b
execute if score fullSlots GameStatus matches 1.. as @e[team=NoRoom] run team join Item

# Set Score
scoreboard players set fullSlots GameStatus 0
scoreboard players reset @s OpenShulkerBox