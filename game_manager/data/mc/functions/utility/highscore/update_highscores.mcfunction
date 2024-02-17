# Update Highscores
  # Days Survived
  execute if score day GameStatus > daysSurvived HighScore run scoreboard players set newHighscore HighScore 1
  execute if score day GameStatus > daysSurvived HighScore run scoreboard players operation daysSurvived HighScore = day GameStatus
  # Successful Expeditions
  execute if score successfulExpeditions GameStatus > successfulExpeditions HighScore run scoreboard players set newHighscore HighScore 1
  execute if score successfulExpeditions GameStatus > successfulExpeditions HighScore run scoreboard players operation successfulExpeditions HighScore = successfulExpeditions GameStatus
  # Expedition Loot
  execute if score expeditionLoot GameStatus > expeditionLoot HighScore run scoreboard players set newHighscore HighScore 1
  execute if score expeditionLoot GameStatus > expeditionLoot HighScore run scoreboard players operation expeditionLoot HighScore = expeditionLoot GameStatus
  # Water Consumed
  execute if score waterConsumed GameStatus > waterConsumed HighScore run scoreboard players set newHighscore HighScore 1
  execute if score waterConsumed GameStatus > waterConsumed HighScore run scoreboard players operation waterConsumed HighScore = waterConsumed GameStatus
  # Soup Consumed
  execute if score soupConsumed GameStatus > soupConsumed HighScore run scoreboard players set newHighscore HighScore 1
  execute if score soupConsumed GameStatus > soupConsumed HighScore run scoreboard players operation soupConsumed HighScore = soupConsumed GameStatus
  # No Decisions
  execute if score noDecisions GameStatus > noDecisions HighScore run scoreboard players set newHighscore HighScore 1
  execute if score noDecisions GameStatus > noDecisions HighScore run scoreboard players operation noDecisions HighScore = noDecisions GameStatus
  # Yes Decisions
  execute if score yesDecisions GameStatus > yesDecisions HighScore run scoreboard players set newHighscore HighScore 1
  execute if score yesDecisions GameStatus > yesDecisions HighScore run scoreboard players operation yesDecisions HighScore = yesDecisions GameStatus
  # Shelter Defences
  execute if score shelterDefences GameStatus > shelterDefences HighScore run scoreboard players set newHighscore HighScore 1
  execute if score shelterDefences GameStatus > shelterDefences HighScore run scoreboard players operation shelterDefences HighScore = shelterDefences GameStatus

# Declare New Highscore
execute if score newHighscore HighScore matches 1 run tellraw @p[team=Playing] {"text":"New Highscore!","bold":true,"color":"yellow"}
execute if score newHighscore HighScore matches 1 at @p[team=Playing] run summon firework_rocket ^ ^2 ^1 {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1,Colors:[I;14602026]}],Flight:1}}}}

# Set Scores
scoreboard players set newHighscore HighScore 0