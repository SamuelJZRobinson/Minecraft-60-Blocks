# Cosmetics And Particles
### Enable when random revamp is implemented to avoid annoyance
# execute if score state GameStatus matches 8 run function mc:states/8_bunker/cosmetics/bunker/update/update_blackout
execute if score state GameStatus matches 5..8 run function mc:utility/particles/manage_particles_markers
execute if score state GameStatus matches 8 run function mc:utility/particles/manage_particles_bunker

# Player Related
  # Hunger
  effect give @a[scores={PlayerHunger=..19}] minecraft:saturation 1 255 true
  scoreboard players reset @a[scores={PlayerHunger=20..}] PlayerHunger
  # Inventory
  execute if score lockInventory GameStatus matches 1..2 as @p[team=Player] run function mc:utility/inventory/lock_inventory
  execute as @p[team=Player,nbt=!{Inventory:[{id:"minecraft:written_book",Slot:8b,Count:1b,tag:{gameMenu:1b}}]}] run function mc:utility/inventory/give_game_menu
  # Clear Ground Items
  execute as @e[type=item,nbt={Item:{tag:{locked:1b}}}] run kill @s

# Expedition
  # Map Update
  execute if score state GameStatus matches 9 run function mc:states/9_expedition/place/items/update/update_items
  execute if score state GameStatus matches 9 as @e[type=slime,team=!Enemy,team=!Item,team=!NoRoom] run team join Enemy @s