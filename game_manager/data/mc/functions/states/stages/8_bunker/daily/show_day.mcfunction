# Adjust Scores
execute if score expeditionDuration MenuExplore matches 1.. run scoreboard players remove expeditionDuration MenuExplore 1
scoreboard players add day GameStatus 1

# Blindness
scoreboard players set fakeBlindness GameStatus 1

# Titles
title @a times 0 50 20
title @a title ["Day ",{"score":{"name":"day","objective":"GameStatus"}}]
execute if score doPovExpedition Settings matches 0 run title @a subtitle ""
execute if score characterSent MenuExplore matches 1.. if score doPovExpedition Settings matches 1 run title @a subtitle [{"text":"Warp in ","bold":true},{"score":{"name":"expeditionDuration","objective":"MenuExplore"}}," days"]

# Last Adult
  # Loop Function
  execute if score expeditionDuration MenuExplore matches 1.. if score adultsAlive GameStatus matches 1 if score childrenAlive GameStatus matches 0 run playsound minecraft:block.note_block.hat record @p[team=Playing] ~ ~ ~ 16 0 1
  execute if score expeditionDuration MenuExplore matches 1.. if score adultsAlive GameStatus matches 1 if score childrenAlive GameStatus matches 0 run schedule function mc:states/stages/8_bunker/daily/show_day 20t
  # Time Depleted
  execute if score expeditionDuration MenuExplore matches 0 if score characterSent MenuExplore matches 1.. run function mc:states/stages/8_bunker/daily/start_expedition
  # Wait until player returns to bunker or dies
  execute if score doPovExpedition Settings matches 0 run schedule function mc:states/stages/8_bunker/daily/update_bunker 1t replace
  execute if score doPovExpedition Settings matches 1 if score expeditionDuration MenuExplore matches 0 if score characterSent MenuExplore matches 0 run schedule function mc:states/stages/8_bunker/daily/update_bunker 1t replace
  execute if score doPovExpedition Settings matches 1 if score expeditionDuration MenuExplore matches 1.. if score characterSent MenuExplore matches 1.. run schedule function mc:states/stages/8_bunker/daily/update_bunker 1t replace