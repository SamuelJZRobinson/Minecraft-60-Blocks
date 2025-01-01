# Decrement Time
execute if score expeditionDuration MenuExplore matches 1.. run scoreboard players remove expeditionDuration MenuExplore 1

# Titles
execute if score doPovExpedition Settings matches 0 run title @a subtitle ""
execute if score doPovExpedition Settings matches 1 if score characterSent MenuExplore matches 1.. run title @a subtitle [{"text":"Warp in ","color":"white"},{"score":{"name":"expeditionDuration","objective":"MenuExplore"},"color":"red"},{"text":" days","color":"red"}]

# Loop Day For Last Adult
execute if score expeditionDuration MenuExplore matches 1.. if score adultsAlive GameStatus matches 1 if score childrenAlive GameStatus matches 0 run playsound minecraft:block.note_block.hat record @p[team=Playing] ~ ~ ~ 16 0 1
execute if score expeditionDuration MenuExplore matches 1.. if score adultsAlive GameStatus matches 1 if score childrenAlive GameStatus matches 0 run schedule function mc:states/8_bunker/daily/manage_day 1s

### Auto, Wait For Player Return Or Death. Seems redundant, already going to update bunker.
### execute if score doPovExpedition Settings matches 0 if score expeditionDuration MenuExplore matches 1.. if score characterSent MenuExplore matches 1.. run schedule function mc:states/8_bunker/daily/update_bunker 1t replace
### execute if score doPovExpedition Settings matches 0 run schedule function mc:states/8_bunker/daily/update_bunker 1t replace

# Start POV Expedition
execute if score doPovExpedition Settings matches 1 if score expeditionDuration MenuExplore matches 0 if score characterSent MenuExplore matches 1.. run scoreboard players set state GameStatus 9
execute if score doPovExpedition Settings matches 1 if score expeditionDuration MenuExplore matches 0 if score characterSent MenuExplore matches 1.. run function mc:states/manage_states

# Update Bunker
execute unless score state GameStatus matches 9 run function mc:states/8_bunker/daily/update_bunker
### execute if score expeditionDuration MenuExplore matches 0 if score characterSent MenuExplore matches 0 run function mc:states/8_bunker/daily/update_bunker
### execute if score expeditionDuration MenuExplore matches 1.. if score characterSent MenuExplore matches 1.. run schedule function mc:states/8_bunker/daily/update_bunker 1t replace