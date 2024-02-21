# Set Scores
execute if score expeditionDuration MenuExplore matches 1.. run scoreboard players remove expeditionDuration MenuExplore 1

# Titles
execute if score doPovExpedition Settings matches 0 run title @a subtitle ""
execute if score doPovExpedition Settings matches 1 if score characterSent MenuExplore matches 1.. run title @a subtitle [{"text":"Warp in ","bold":true},{"score":{"name":"expeditionDuration","objective":"MenuExplore"}}," days"]

# Last Adult
execute if score expeditionDuration MenuExplore matches 1.. if score adultsAlive GameStatus matches 1 if score childrenAlive GameStatus matches 0 run playsound minecraft:block.note_block.hat record @p[team=Playing] ~ ~ ~ 16 0 1
execute if score expeditionDuration MenuExplore matches 1.. if score adultsAlive GameStatus matches 1 if score childrenAlive GameStatus matches 0 run schedule function mc:states/stages/8_bunker/daily/show_day 20t

# Wait For Player Return Or Death
execute if score doPovExpedition Settings matches 0 if score expeditionDuration MenuExplore matches 0 if score characterSent MenuExplore matches 0 run schedule function mc:states/stages/8_bunker/daily/update_bunker 1t replace
execute if score doPovExpedition Settings matches 0 if score expeditionDuration MenuExplore matches 1.. if score characterSent MenuExplore matches 1.. run schedule function mc:states/stages/8_bunker/daily/update_bunker 1t replace
execute if score doPovExpedition Settings matches 0 run schedule function mc:states/stages/8_bunker/daily/update_bunker 1t replace

# Start
execute if score expeditionDuration MenuExplore matches 0 if score characterSent MenuExplore matches 1.. run scoreboard players set state GameStatus 9
execute if score expeditionDuration MenuExplore matches 0 if score characterSent MenuExplore matches 1.. run function mc:states/stages/manage_states