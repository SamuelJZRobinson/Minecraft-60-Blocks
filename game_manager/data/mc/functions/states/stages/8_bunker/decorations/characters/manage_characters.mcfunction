# Notes
  # Characters are immune to status effects during an atomic drill or expedition
  # To prevent errors math_out needs refreshing between categories
  # escape tracks when insane characters leave the bunker since it can occur at any time and is difficult to determine with breakdown
  # Since characters do not update while on expedition thier model and status text needs external checking
  # Atomic Drill task 14 makes everyone thirsty, task 15 fixes thirsty, task 16 character returns from expedition
  ## Decrease character sanity

# Setup Dice
execute if score difficulty Lobby matches 1 run scoreboard players set mode em 2
execute if score difficulty Lobby matches 2 run scoreboard players set mode em 1
execute if score difficulty Lobby matches 3 run scoreboard players set mode em 3
scoreboard players set dynamicDifficulty em 1
scoreboard players set notRandom em 0
scoreboard players set startOne em 1

# Update Living Characters
execute if score alive DoloresStatus matches 1 unless score characterSent ChestMenuExplore matches 1 unless score task AtomicDrill matches 13 unless score task AtomicDrill matches 18.. run function mc:states/stages/8_bunker/decorations/characters/update/update_dolores
execute if score alive MaryStatus matches 1 unless score characterSent ChestMenuExplore matches 2..3 unless score task AtomicDrill matches 13 unless score task AtomicDrill matches 18.. run schedule function mc:states/stages/8_bunker/decorations/characters/update/update_mary_base 1t replace
execute if score alive TedStatus matches 1 unless score characterSent ChestMenuExplore matches 4 unless score task AtomicDrill matches 13 unless score task AtomicDrill matches 18.. run schedule function mc:states/stages/8_bunker/decorations/characters/update/update_ted 2t replace
execute if score alive TimmyStatus matches 1 unless score characterSent ChestMenuExplore matches 5 unless score task AtomicDrill matches 13 unless score task AtomicDrill matches 18.. run schedule function mc:states/stages/8_bunker/decorations/characters/update/update_timmy 3t replace

# Hide Characters During Expedition
execute if score characterSent ChestMenuExplore matches 1.. run function mc:states/stages/8_bunker/decorations/characters/update/update_expedition_hide