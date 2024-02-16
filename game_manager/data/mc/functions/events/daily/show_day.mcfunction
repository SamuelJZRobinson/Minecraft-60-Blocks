# Adjust Scores
execute if score expeditionDuration ChestMenuExplore matches 1.. run scoreboard players remove expeditionDuration ChestMenuExplore 1
scoreboard players add day GameStatus 1

# Blindness
scoreboard players set fakeBlindness GameStatus 1

# Titles
title @a times 0 50 20
title @a title ["Day ",{"score":{"name":"day","objective":"GameStatus"}}]
execute if score expeditionMode Lobby matches 0 run title @a subtitle ""
execute if score characterSent ChestMenuExplore matches 1.. if score expeditionMode Lobby matches 1 run title @a subtitle [{"text":"Warp in ","bold":true},{"score":{"name":"expeditionDuration","objective":"ChestMenuExplore"}}," days"]

# Last Adult
  # Loop Function
  execute if score expeditionDuration ChestMenuExplore matches 1.. if score adultsAlive GameStatus matches 1 if score childrenAlive GameStatus matches 0 run playsound minecraft:block.note_block.hat record @p[team=Playing] ~ ~ ~ 16 0 1
  execute if score expeditionDuration ChestMenuExplore matches 1.. if score adultsAlive GameStatus matches 1 if score childrenAlive GameStatus matches 0 run schedule function mc:events/daily/show_day 20t
  # Time Depleted
  execute if score expeditionDuration ChestMenuExplore matches 0 if score characterSent ChestMenuExplore matches 1.. run function mc:events/daily/start_expedition
  # Wait until player returns to bunker or dies
  execute if score expeditionMode Lobby matches 0 run schedule function mc:events/daily/update_status 1t replace
  execute if score expeditionMode Lobby matches 1 if score expeditionDuration ChestMenuExplore matches 0 if score characterSent ChestMenuExplore matches 0 run schedule function mc:events/daily/update_status 1t replace
  execute if score expeditionMode Lobby matches 1 if score expeditionDuration ChestMenuExplore matches 1.. if score characterSent ChestMenuExplore matches 1.. run schedule function mc:events/daily/update_status 1t replace