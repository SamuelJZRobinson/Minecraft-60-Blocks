# Reset Scores
scoreboard players set adultsAlive CharactersCount 0
scoreboard players set childrenAlive CharactersCount 0
scoreboard players set totalAlive CharactersCount 0
scoreboard players set totalPresent CharactersCount 0

# Count Adults
execute if score alive TedStatus matches 1 run scoreboard players add adultsAlive CharactersCount 1
execute if score alive DoloresStatus matches 1 run scoreboard players add adultsAlive CharactersCount 1
scoreboard players operation totalAlive CharactersCount += adultsAlive CharactersCount

# Count Children
execute if score alive MaryStatus matches 1 run scoreboard players add childrenAlive CharactersCount 1
execute if score alive TimmyStatus matches 1 run scoreboard players add childrenAlive CharactersCount 1
scoreboard players operation totalAlive CharactersCount += childrenAlive CharactersCount

# Sum Present
execute if score alive TedStatus matches 1 unless score characterSent MenuExpedition matches 1 run scoreboard players add totalPresent CharactersCount 1
execute if score alive DoloresStatus matches 1 unless score characterSent MenuExpedition matches 2 run scoreboard players add totalPresent CharactersCount 1
execute if score alive MaryStatus matches 1 unless score characterSent MenuExpedition matches 3 run scoreboard players add totalPresent CharactersCount 1
execute if score alive TimmyStatus matches 1 unless score characterSent MenuExpedition matches 4 run scoreboard players add totalPresent CharactersCount 1