# Particles
  # Atomic Drill
  execute if score gameState GameStatus matches 5 run function mc:utility/particles/atomic_drill/manage_particles
  # Scavenge
  execute if score gameState GameStatus matches 6..7 run function mc:utility/particles/scavenge/manage_particles
  # Bunker
  execute if score gameState GameStatus matches 8 run function mc:utility/particles/bunker/manage_particles
  ### execute if score gameState GameStatus matches 8 run function mc:states/8_bunker/bunker/lights/manage_blackout

# Player
  # Lock Slots
  execute as @p[team=Player] run function mc:utility/inventory/manage_lock_slots
  # Game Menu
  execute as @p[team=Player,nbt=!{Inventory:[{id:"minecraft:written_book",Slot:8b,Count:1b,tag:{gameMenu:1b}}]}] run function mc:utility/inventory/give_game_menu

# Update Expedition Items
execute if score gameState GameStatus matches 9 run function mc:states/9_expedition/place/items/update/update_items