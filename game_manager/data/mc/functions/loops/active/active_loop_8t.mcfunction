# Notes
  # lockInventory determines the number of free slots, including: 0 (all free), 1 (all locked), 2 (four hotbar free), 3 (all free and chekc items for expedition)

# Cosmetics And Particles
execute if score state GameStatus matches 8 run function mc:particles/bunker_blackout_chance
execute if score state GameStatus matches 5..8 run function mc:particles/manage_location_markers
execute if score state GameStatus matches 8 run function mc:particles/manage_bunker_particles

# Player Related
  # Hunger
  effect give @a[scores={PlayerHunger=..19}] minecraft:saturation 1 255 true
  scoreboard players reset @a[scores={PlayerHunger=20..}] PlayerHunger
  # Give Blindness
  execute if score blindness GameStatus matches 1.. as @p[team=Playing] run function mc:utility/vision/fake_blindness
  # Inventory
  execute if score lockInventory GameStatus matches 1..2 as @p[team=Playing] run function mc:utility/inventory/lock_inventory
  execute as @p[team=Playing,nbt=!{Inventory:[{id:"minecraft:written_book",Slot:8b,Count:1b,tag:{gameMenu:1b}}]}] run function mc:utility/inventory/give_game_menu
  # execute if score clock Timer matches 2.. as @p[team=Playing] run function mc:timer/scavenge/clear_items
  # Remove Ground Items
  execute as @e[type=item,nbt={Item:{tag:{locked:1b}}}] run kill @s

# Expedition
# Location Update
execute if score state GameStatus matches 9 run function mc:timer/expedition/update
execute if score state GameStatus matches 9 as @e[type=slime,team=!Enemy,team=!Item,team=!NoRoom] run team join Enemy @s