# Set Scores
scoreboard players set adultsAlive GameStatus 0
scoreboard players set childrenAlive GameStatus 0
scoreboard players set totalAlive GameStatus 0
scoreboard players set totalPresent GameStatus 0

# Count Adults
execute if score alive DoloresStatus matches 1 run scoreboard players add adultsAlive GameStatus 1
execute if score alive TedStatus matches 1 run scoreboard players add adultsAlive GameStatus 1
scoreboard players operation totalAlive GameStatus += adultsAlive GameStatus

# Count Children
execute if score alive MaryStatus matches 1 run scoreboard players add childrenAlive GameStatus 1
execute if score alive TimmyStatus matches 1 run scoreboard players add childrenAlive GameStatus 1
scoreboard players operation totalAlive GameStatus += childrenAlive GameStatus

# Count Present
execute if score alive DoloresStatus matches 1 unless score characterSent ChestMenuExplore matches 1 run scoreboard players add totalPresent GameStatus 1
execute if score alive MaryStatus matches 1 unless score characterSent ChestMenuExplore matches 2..3 run scoreboard players add totalPresent GameStatus 1
execute if score alive TedStatus matches 1 unless score characterSent ChestMenuExplore matches 4 run scoreboard players add totalPresent GameStatus 1
execute if score alive TimmyStatus matches 1 unless score characterSent ChestMenuExplore matches 5 run scoreboard players add totalPresent GameStatus 1