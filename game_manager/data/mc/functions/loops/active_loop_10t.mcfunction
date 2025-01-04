# Particles
  # Atomic Drill
  execute if score state GameStatus matches 5 run function mc:utility/particles/atomic_drill/manage_particles
  # Scavenge
  execute if score state GameStatus matches 6..7 run function mc:utility/particles/scavenge/manage_particles
  # Bunker
  execute if score state GameStatus matches 8 run function mc:utility/particles/bunker/manage_particles
  execute if score state GameStatus matches 8 run function mc:states/8_bunker/bunker/update/update_blackout

# Player
  # Lock Slots
  execute as @p[team=Player] run function mc:utility/inventory/manage_lock_slots
  # Game Menu
  execute as @p[team=Player,nbt=!{Inventory:[{id:"minecraft:written_book",Slot:8b,Count:1b,tag:{gameMenu:1b}}]}] run function mc:utility/inventory/give_game_menu

# Expedition
  # Map Update
  # execute if score state GameStatus matches 9 run function mc:states/9_expedition/place/items/update/update_items
  # execute if score state GameStatus matches 9 as @e[type=slime,team=!Enemy,team=!Item,team=!ItemsLocked] run team join Enemy @s