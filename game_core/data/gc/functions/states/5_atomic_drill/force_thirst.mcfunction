# Set Scores
execute unless score characterSent MenuExpedition matches 1 if score alive DoloresStatus matches 1 run scoreboard players operation water DoloresStatus = THIRST_AMOUNT_CRITICAL CharactersLevels
execute unless score characterSent MenuExpedition matches 2..3 if score alive MaryStatus matches 1 run scoreboard players operation water MaryStatus = THIRST_AMOUNT_CRITICAL CharactersLevels
execute unless score characterSent MenuExpedition matches 4 if score alive TedStatus matches 1 run scoreboard players operation water TedStatus = THIRST_AMOUNT_CRITICAL CharactersLevels
execute unless score characterSent MenuExpedition matches 5 if score alive TimmyStatus matches 1 run scoreboard players operation water TimmyStatus = THIRST_AMOUNT_CRITICAL CharactersLevels

# Refresh Character Status
function gc:states/8_bunker/characters/manage_characters