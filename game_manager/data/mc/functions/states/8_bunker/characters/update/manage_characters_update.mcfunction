# Notes
  # characterItemBreak is used to determine who is breaking the item to avoid complex data store string comparisons.

# Ted
execute if score alive TedStatus matches 1 run scoreboard players set characterItemBreak GameStatus 1
execute if score alive TedStatus matches 1 unless score characterSent MenuExplore matches 1 run data modify storage updatecharacters objective set value {"objective":TedStatus}
execute if score alive TedStatus matches 1 unless score characterSent MenuExplore matches 1 run function mc:states/8_bunker/characters/update/update_character
# Dolores
execute if score alive DoloresStatus matches 1 run scoreboard players set characterItemBreak GameStatus 2
execute if score alive DoloresStatus matches 1 unless score characterSent MenuExplore matches 2 run data modify storage updatecharacters objective set value {"objective":DoloresStatus}
execute if score alive DoloresStatus matches 1 unless score characterSent MenuExplore matches 2 run function mc:states/8_bunker/characters/update/update_character
# Mary
execute if score alive MaryStatus matches 1 run scoreboard players set characterItemBreak GameStatus 3
execute if score alive MaryStatus matches 1 unless score characterSent MenuExplore matches 3 run data modify storage updatecharacters objective set value {"objective":MaryStatus}
execute if score alive MaryStatus matches 1 unless score characterSent MenuExplore matches 3 if score isMutant MaryStatus matches 0 run function mc:states/8_bunker/characters/update/update_character
execute if score isMutant MaryStatus matches 1 unless score characterSent MenuExplore matches 3 if score isMutant MaryStatus matches 1 run function mc:states/8_bunker/characters/update/update_mary_mutated
# Timmy
execute if score alive TimmyStatus matches 1 run scoreboard players set characterItemBreak GameStatus 4
execute if score alive TimmyStatus matches 1 unless score characterSent MenuExplore matches 4 run data modify storage updatecharacters objective set value {"objective":TimmyStatus}
execute if score alive TimmyStatus matches 1 unless score characterSent MenuExplore matches 4 run function mc:states/8_bunker/characters/update/update_character