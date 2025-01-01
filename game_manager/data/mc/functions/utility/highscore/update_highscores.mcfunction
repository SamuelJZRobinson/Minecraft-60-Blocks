# Update Highscores
  # Days Survived
  execute if score day GameStatus > daysSurvived Highscores run scoreboard players set newHighscore Highscores 1
  execute if score day GameStatus > daysSurvived Highscores run scoreboard players operation daysSurvived Highscores = day GameStatus
  # Successful Expeditions
  execute if score expeditionsDone GameStatistics > expeditionsDone Highscores run scoreboard players set newHighscore Highscores 1
  execute if score expeditionsDone GameStatistics > expeditionsDone Highscores run scoreboard players operation expeditionsDone Highscores = expeditionsDone GameStatistics
  # Expedition Loot
  execute if score expeditionLoot GameStatistics > expeditionLoot Highscores run scoreboard players set newHighscore Highscores 1
  execute if score expeditionLoot GameStatistics > expeditionLoot Highscores run scoreboard players operation expeditionLoot Highscores = expeditionLoot GameStatistics
  # Water Consumed
  execute if score waterConsumed GameStatistics > waterConsumed Highscores run scoreboard players set newHighscore Highscores 1
  execute if score waterConsumed GameStatistics > waterConsumed Highscores run scoreboard players operation waterConsumed Highscores = waterConsumed GameStatistics
  # Soup Consumed
  execute if score soupConsumed GameStatistics > soupConsumed Highscores run scoreboard players set newHighscore Highscores 1
  execute if score soupConsumed GameStatistics > soupConsumed Highscores run scoreboard players operation soupConsumed Highscores = soupConsumed GameStatistics
  # No Decisions
  execute if score noDecisions GameStatistics > noDecisions Highscores run scoreboard players set newHighscore Highscores 1
  execute if score noDecisions GameStatistics > noDecisions Highscores run scoreboard players operation noDecisions Highscores = noDecisions GameStatistics
  # Yes Decisions
  execute if score yesDecisions GameStatistics > yesDecisions Highscores run scoreboard players set newHighscore Highscores 1
  execute if score yesDecisions GameStatistics > yesDecisions Highscores run scoreboard players operation yesDecisions Highscores = yesDecisions GameStatistics
  # Shelter Defences
  execute if score shelterDefences GameStatistics > shelterDefences Highscores run scoreboard players set newHighscore Highscores 1
  execute if score shelterDefences GameStatistics > shelterDefences Highscores run scoreboard players operation shelterDefences Highscores = shelterDefences GameStatistics

# Declare New Highscore
execute if score newHighscore Highscores matches 1 run tellraw @p[team=Player] {"text":"New Highscore!","bold":true,"color":"yellow"}
execute if score newHighscore Highscores matches 1 at @p[team=Player] run summon firework_rocket ^ ^2 ^1 {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1,Colors:[I;14602026]}],Flight:1}}}}

# Set Scores
scoreboard players set newHighscore Highscores 0