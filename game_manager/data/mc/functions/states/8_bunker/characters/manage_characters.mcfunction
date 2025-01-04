# Notes
  # Characters are immune to status effects during an atomic drill or expedition
  # To prevent errors math_out needs refreshing between categories
  # escape tracks when insane characters leave the bunker since it can occur at any time and is difficult to determine with breakdown
  # Since characters do not update while on expedition thier model and status text needs external checking
  # Atomic Drill task 14 makes everyone thirsty, task 15 fixes thirsty, task 16 character returns from expedition
  ### Decrease character sanity

# Set Dice
scoreboard players set mode Math 0
# execute if score difficulty Settings matches 1 run scoreboard players set mode em 1
# execute if score difficulty Settings matches 3 run scoreboard players set mode em 2
scoreboard players set dynamicDifficulty Math 1
scoreboard players set notRandom Math 0
scoreboard players set startOne Math 1

# Update Living Characters
execute if score alive DoloresStatus matches 1 unless score characterSent MenuExplore matches 1 unless score task AtomicDrill matches 13 unless score task AtomicDrill matches 18.. run function mc:states/8_bunker/characters/update/update_dolores
execute if score alive MaryStatus matches 1 unless score characterSent MenuExplore matches 2..3 unless score task AtomicDrill matches 13 unless score task AtomicDrill matches 18.. run function mc:states/8_bunker/characters/update/update_mary
execute if score alive TedStatus matches 1 unless score characterSent MenuExplore matches 4 unless score task AtomicDrill matches 13 unless score task AtomicDrill matches 18.. run function mc:states/8_bunker/characters/update/update_ted
execute if score alive TimmyStatus matches 1 unless score characterSent MenuExplore matches 5 unless score task AtomicDrill matches 13 unless score task AtomicDrill matches 18.. run function mc:states/8_bunker/characters/update/update_timmy