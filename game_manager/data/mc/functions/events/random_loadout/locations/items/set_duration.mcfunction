# Setup Dice
scoreboard players set mode em 1
scoreboard players set dynamicDifficulty em 0
scoreboard players set notRandom em 0
scoreboard players set startOne em 1

# Set Duration
  # Short (4 to 6, n+1)
  execute if score locationSelect MenuExplore matches 1..4 run scoreboard players set math_in1 em 4
  execute if score locationSelect MenuExplore matches 1..4 run scoreboard players set math_in2 em 7
  # Medium (5 to 7, n+1)
  execute if score locationSelect MenuExplore matches 5..6 run scoreboard players set math_in1 em 5
  execute if score locationSelect MenuExplore matches 5..6 run scoreboard players set math_in2 em 8
  # Long (6 to 8, n+1)
  execute if score locationSelect MenuExplore matches 7..8 run scoreboard players set math_in1 em 6
  execute if score locationSelect MenuExplore matches 7..8 run scoreboard players set math_in2 em 9
  # Copy Output
  function em:math/randomp
  scoreboard players operation expeditionDuration MenuExplore = math_out em

  execute if score task AtomicDrill matches 13 run scoreboard players set expeditionDuration MenuExplore 3