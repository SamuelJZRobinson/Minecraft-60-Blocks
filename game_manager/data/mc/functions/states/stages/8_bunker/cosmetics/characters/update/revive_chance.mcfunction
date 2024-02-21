# Setup Dice
scoreboard players set mode em 1
scoreboard players set dynamicDifficulty em 0
scoreboard players set notRandom em 0
scoreboard players set startOne em 1

# Revive Chance (1 in x, n+1)
  # Dolores
  scoreboard players operation memory em = REVIVE StatusOdds
  execute if score survivedNuke DoloresStatus matches 0 run function em:math/get_percentage
  execute if score math_out em matches 1 run scoreboard players set characterRevived GameStatus 1
  execute if score characterRevived GameStatus matches 1 run scoreboard players set alive DoloresStatus 1
  scoreboard players set math_out em 0
  # Mary Jane
  scoreboard players operation memory em = REVIVE StatusOdds
  execute if score survivedNuke MaryStatus matches 0 run function em:math/get_percentage
  execute if score math_out em matches 1 run scoreboard players set characterRevived GameStatus 2
  execute if score characterRevived GameStatus matches 2 run scoreboard players set alive MaryStatus 1
  scoreboard players set math_out em 0
  # Ted
  scoreboard players operation memory em = REVIVE StatusOdds
  execute if score survivedNuke TedStatus matches 0 run function em:math/get_percentage
  execute if score math_out em matches 1 run scoreboard players set characterRevived GameStatus 3
  execute if score characterRevived GameStatus matches 3 run scoreboard players set alive TedStatus 1
  scoreboard players set math_out em 0
  # Timmy
  scoreboard players operation memory em = REVIVE StatusOdds
  execute if score survivedNuke TimmyStatus matches 0 run function em:math/get_percentage
  execute if score math_out em matches 1 run scoreboard players set characterRevived GameStatus 4
  execute if score characterRevived GameStatus matches 4 run scoreboard players set alive TimmyStatus 1
  scoreboard players set math_out em 0