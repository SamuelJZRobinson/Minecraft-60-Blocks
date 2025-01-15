# Set Scores
scoreboard players set dynamicDifficulty em 0
scoreboard players set notRandom em 0
scoreboard players set startOne em 1

# Set Duration
  # Short (4 to 6, n+1)
  execute if score mapSelect MenuExpedition matches 1..4 run scoreboard players set math_in1 em 4
  execute if score mapSelect MenuExpedition matches 1..4 run scoreboard players set math_in2 em 7
  # Medium (5 to 7, n+1)
  execute if score mapSelect MenuExpedition matches 5..6 run scoreboard players set math_in1 em 5
  execute if score mapSelect MenuExpedition matches 5..6 run scoreboard players set math_in2 em 8
  # Long (6 to 8, n+1)
  execute if score mapSelect MenuExpedition matches 7..8 run scoreboard players set math_in1 em 6
  execute if score mapSelect MenuExpedition matches 7..8 run scoreboard players set math_in2 em 9
  # Output
  function em:math/randomp
  scoreboard players operation expeditionDuration MenuExpedition = math_out em