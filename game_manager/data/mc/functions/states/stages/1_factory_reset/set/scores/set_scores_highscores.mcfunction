# HIGHSCORES
scoreboard objectives add Highscores dummy {"bold":true,"color":"white","text":"Highscores"}
# Sustenance
scoreboard players set soupConsumed Highscores 0
scoreboard players set waterConsumed Highscores 0
# Decisions
scoreboard players set noDecisions Highscores 0
scoreboard players set yesDecisions Highscores 0
# Expeditions
scoreboard players set expeditionsDone Highscores 0
scoreboard players set expeditionLoot Highscores 0
# Combat
scoreboard players set shelterDefences Highscores 0
# Duration
scoreboard players set daysSurvived Highscores 0
# Management
scoreboard players set newHighscore Highscores 0

# PLAYER WINS
scoreboard objectives add PlayerWins dummy {"bold":true,"color":"white","text":"Player Wins"}

# Status
tellraw @p[team=Playing] {"text":"Highscores reset!","bold":true,"color":"red"}