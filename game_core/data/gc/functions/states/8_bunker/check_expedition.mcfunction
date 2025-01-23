# Lock Expedition
execute if score day GameStatus matches ..1 run scoreboard players set expeditionReady MenuExpedition -1
execute if score day GameStatus matches 2 run scoreboard players set expeditionReady MenuExpedition 0

# Decrement Time
execute if score expeditionDuration MenuExpedition matches 1.. run scoreboard players remove expeditionDuration MenuExpedition 1

# Titles
execute if score doInPersonExpedition Settings matches 0 run title @a subtitle ""
execute if score doInPersonExpedition Settings matches 1 if score characterSent MenuExpedition matches 1.. run title @a subtitle [{"text":"Warp in ","color":"white"},{"score":{"name":"expeditionDuration","objective":"MenuExpedition"},"color":"red"},{"text":" days","color":"red"}]

# Loop Day For Last Adult
execute unless score gamemode Settings matches 1 if score expeditionDuration MenuExpedition matches 1.. if score adultsAlive CharactersCount matches 1 if score childrenAlive CharactersCount matches 0 run playsound minecraft:block.note_block.hat record @p[team=Player] ~ ~ ~ 16 0 1
execute unless score gamemode Settings matches 1 if score expeditionDuration MenuExpedition matches 1.. if score adultsAlive CharactersCount matches 1 if score childrenAlive CharactersCount matches 0 run schedule function gc:states/8_bunker/manage_day 1s replace

# Start Expedition
execute if score expeditionDuration MenuExpedition matches 0 if score characterSent MenuExpedition matches 1.. run scoreboard players set gameState GameStatus 9
execute if score expeditionDuration MenuExpedition matches 0 if score characterSent MenuExpedition matches 1.. run schedule function gc:states/manage_states 1t replace