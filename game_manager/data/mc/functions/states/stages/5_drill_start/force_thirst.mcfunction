# Set Scores
execute unless score characterSent MenuExplore matches 1 if score alive DoloresStatus matches 1 run scoreboard players operation water DoloresStatus = THIRST_MIN StatusLevels
execute unless score characterSent MenuExplore matches 2..3 if score alive MaryStatus matches 1 run scoreboard players operation water MaryStatus = THIRST_MIN StatusLevels
execute unless score characterSent MenuExplore matches 4 if score alive TedStatus matches 1 run scoreboard players operation water TedStatus = THIRST_MIN StatusLevels
execute unless score characterSent MenuExplore matches 5 if score alive TimmyStatus matches 1 run scoreboard players operation water TimmyStatus = THIRST_MIN StatusLevels

# Refresh Character Status
function mc:states/stages/8_bunker/cosmetics/characters/manage_characters