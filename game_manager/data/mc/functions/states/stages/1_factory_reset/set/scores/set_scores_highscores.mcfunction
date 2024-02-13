# Reset Scores
scoreboard objectives add HighScore dummy {"bold":true,"color":"white","text":"HighScore"}
scoreboard players set newHighscore HighScore 0
scoreboard players set daysSurvived HighScore 0
scoreboard players set successfulExpeditions HighScore 0
scoreboard players set expeditionLoot HighScore 0
scoreboard players set waterConsumed HighScore 0
scoreboard players set soupConsumed HighScore 0
scoreboard players set noDecisions HighScore 0
scoreboard players set yesDecisions HighScore 0
scoreboard players set shelterDefences HighScore 0

# Status
tellraw @p[team=Playing] {"text":"Highscore reset!","bold":true,"color":"red"}