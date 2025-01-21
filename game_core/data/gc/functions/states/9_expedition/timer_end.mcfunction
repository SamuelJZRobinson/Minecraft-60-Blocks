# Playsound
function gc:sounds/expedition_end

# Adjust Scores
### scoreboard players set clock Timer 3
scoreboard players set music GameStatus 3
scoreboard objectives setdisplay sidebar

# Time Depleted
  # Clear Location Entities
  execute as @p[team=Player] run function gc:timer/expedition/clear_location_entities
  # Enable Natural Regeneration
  gamerule naturalRegeneration true
  effect give @p[team=Player] instant_health 1 20 true

# Analyse Player Damage and Harm Characters
execute unless score task AtomicDrill matches 15..16 run scoreboard players set characterSent MenuExpedition 0

# Append Inventory Items
execute if score doPovExpedition Settings matches 1 unless score expeditionDeath AtomicDrill matches 1.. run function gc:timer/expedition/get_player_inventory
scoreboard players set stage ItemsBundles 9
execute if score doPovExpedition Settings matches 1 unless score expeditionDeath AtomicDrill matches 1.. run function gc:states/8_bunker/items/process/bundles/check/check_main_add

# Effects
# effect give @p[team=Player] minecraft:blindness 2 0 true

# Bunker Related
  # Teleport
  schedule function gc:utility/tp/tp_bunker 19t replace
  # Titles
  title @a times 10 20 10
  title @a title {"text":"Meanwhile","color":"gold"}
  title @a subtitle {"text":"In the bunker","color":"red"}
  # Update Items
  schedule function gc:states/8_bunker/update_bunker 20t replace

# Atomic Drill
execute if score doPovExpedition Settings matches 1 if score task AtomicDrill matches 15..16 run schedule function cm:menu/page3/event/event2_return 21t replace
execute unless score task AtomicDrill matches 15..16 run scoreboard players set expeditionDeath AtomicDrill 0

# Set State
scoreboard players set gameState GameStatus 8
schedule function gc:states/manage_states 1t replace