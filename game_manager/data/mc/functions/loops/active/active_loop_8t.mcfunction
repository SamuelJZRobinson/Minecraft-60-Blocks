# Notes
  # lockInventory determines the number of free slots, including: 0 (all free), 1 (all locked), 2 (four hotbar free), 3 (all free and chekc items for expedition)

# Player Related
  # Count Players
  # function mc:play/lobby/count_players
  # Hunger
  execute unless score clock Timer matches 4 run effect give @a[scores={PlayerHunger=..19}] minecraft:saturation 1 255 true
  scoreboard players reset @a[scores={PlayerHunger=20}] PlayerHunger
  # Give Blindness
  execute if score blindness GameStatus matches 1.. as @p[team=Playing] run function mc:utility/vision/fake_blindness
  # Lock Slots
  execute if score lockInventory GameStatus matches 1..2 as @p[team=Playing] run function mc:utility/inventory/lock_inventory
  execute as @e[type=item,nbt={Item:{tag:{locked:1b}}}] run kill @s
  execute if score clock Timer matches 2.. as @p[team=Playing] run function mc:timer/scavenge/clear_items
  execute as @p[team=Playing,nbt=!{Inventory:[{id:"minecraft:written_book",Slot:8b,Count:1b,tag:{gameMenu:1b}}]}] run function mc:utility/inventory/give_game_menu
  # Location Update
  execute if score clock Timer matches 4 run function mc:timer/expedition/update
  execute if score clock Timer matches 4 as @e[type=slime,team=!Enemy,team=!Item,team=!NoRoom] run team join Enemy @s

# Cosmetics And Particles
execute if score clock Timer matches 3 run function mc:particles/bunker_blackout_chance
execute unless score clock Timer matches 3.. run function mc:particles/manage_location_markers
execute if score clock Timer matches 3 run function mc:particles/manage_bunker_particles