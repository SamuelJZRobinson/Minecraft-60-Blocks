# Cosmetics
  # Particles
  execute if score bunkerSide GameStatus matches 0 positioned 37.50 65.00 -6.50 run function gc:utility/particles/scavenge/salvage_crate_open
  execute if score bunkerSide GameStatus matches 1 positioned 10.65 65.00 -6.50 run function gc:utility/particles/scavenge/salvage_crate_open
  # Sounds
  playsound minecraft:item.armor.equip_netherite player @s ~ ~ ~ 1 0.5 1
  # Force Shut
  function gc:states/7_scavenge_house/items/collect/close_salvage_crate

# Copy Hotbar
execute as @p[team=Player] at @s run function gc:states/7_scavenge_house/items/collect/get_hotbar_item_id

# Hide Full Inventory Warning
title @s actionbar ""

# Make Items Collectable
execute as @e[type=#gc:mob_collectable,team=ItemsLocked] run data modify entity @s Invulnerable set value 0b
execute as @e[team=ItemsLocked] run team join Items

# Reset Scores
scoreboard players set fullSlots GameStatus 0
scoreboard players reset @s OpenShulkerBox