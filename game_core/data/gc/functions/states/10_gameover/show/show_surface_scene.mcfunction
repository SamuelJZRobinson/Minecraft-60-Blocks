# Notes
  # Driven away endings are randomly chosen when nobody is inside the bunker.

# Declare Game Ended
scoreboard players set isGameStarted GameStatus 0

# Title
title @a times 20 80 20

# Teleport
function gc:states/10_gameover/tp/tp_house_ruins

# Perished Endings
  # Title
  execute if score ending GameStatus matches 1 run title @a title {"text":"YOU PERISHED.","color":"white"}
  # 1 - Family Perished

# # Partial Win Endings
#   # Title
#   execute if score ending GameStatus matches 2..5 run title @a title {"text":"YOU SURVIVED... MAYBE.","color":"white"}
#   # No2 - Feline Domination
#   # No 3 - Cat Lady
#   # No 4 - Secret Agent Rescue
#   # No 5 - Rocket Ship

# Win Endings
  # Title
  execute if score ending GameStatus matches 6 run title @a title {"text":"SAFE... FOR NOW.","color":"white"}
  # 6 - Scavenge Successful
  execute if score ending GameStatus matches 7..10 run title @a title {"text":"YOU SURVIVED.","color":"white"}
  # No 7 - Military Rescue
  # No 8 - Twin Siblings Rescue
  # No 9 - Tank Escape
  # No 10 - Ice-cream Truck Escape

# Driven Away Endings
  # Title
  execute if score ending GameStatus matches 11..16 run title @a title {"text":"YOU WERE DRIVEN AWAY.","color":"white"}
  # 11 - Family Invasion
  # 12 - Priest Invasion
  # 13 - Bandit Invasion
  # 14 - Military Invasion

# Check Highscores
function gc:utility/highscore/update_highscores

# Scavenge Item Count
execute if score gamemode Settings matches 3 run schedule function gc:states/10_gameover/show/show_items_collected 2s replace
# Apocalypse And Survival Statistics
execute if score gamemode Settings matches 2 run schedule function gc:states/10_gameover/show/show_statistics 2s replace
execute if score gamemode Settings matches 4 run schedule function gc:states/10_gameover/show/show_statistics 2s replace

# Set State
scoreboard players set gameState GameStatus 1
schedule function gc:states/manage_states 7s replace