tellraw @a "state 9"

# POV Settings
  # Reset Scores
  execute if score doInPersonExpedition Settings matches 1 run scoreboard players reset * PlayerDeaths
  # Set Music
  execute if score doInPersonExpedition Settings matches 1 run scoreboard players set music GameStatus 2
  # Gamerules
  execute if score doInPersonExpedition Settings matches 1 run gamerule naturalRegeneration false

# Setup Expedition
scoreboard players set step ItemsExpedition 1
schedule function gc:states/9_expedition/manage_expedition 1t replace