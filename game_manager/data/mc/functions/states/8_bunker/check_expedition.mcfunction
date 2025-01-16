# Decrement Time
execute if score expeditionDuration MenuExpedition matches 1.. run scoreboard players remove expeditionDuration MenuExpedition 1

# Titles
execute if score doPovExpedition Settings matches 0 run title @a subtitle ""
execute if score doPovExpedition Settings matches 1 if score characterSent MenuExpedition matches 1.. run title @a subtitle [{"text":"Warp in ","color":"white"},{"score":{"name":"expeditionDuration","objective":"MenuExpedition"},"color":"red"},{"text":" days","color":"red"}]

# Loop Day For Last Adult
execute if score expeditionDuration MenuExpedition matches 1.. if score adultsAlive GameStatus matches 1 if score childrenAlive GameStatus matches 0 run playsound minecraft:block.note_block.hat record @p[team=Player] ~ ~ ~ 16 0 1
execute if score expeditionDuration MenuExpedition matches 1.. if score adultsAlive GameStatus matches 1 if score childrenAlive GameStatus matches 0 run schedule function mc:states/8_bunker/manage_day 1s

# Start Expedition
execute if score expeditionDuration MenuExpedition matches 0 if score characterSent MenuExpedition matches 1.. run scoreboard players set state GameStatus 9
execute if score expeditionDuration MenuExpedition matches 0 if score characterSent MenuExpedition matches 1.. run schedule function mc:states/manage_states 1t replace