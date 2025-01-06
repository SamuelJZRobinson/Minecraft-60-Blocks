# Notes
  # Easy dififculty has 4 family members, prepper style bunker (3 items), 6 to 8 food, 6 to 8 water.
  # Normal dififculty has 2 to 4 family members, some junk in bunker (1 item), 4 to 6 food, 4 to 6 water.
  # Hard difficulty has 2 family members, empty shelter (0 items), 2 to 3 food, 2 to 3 water.

# # Start Survival Gamemode
#   # Randomly Give Items According To Difficulty
#     # Sustenance
#       # Set Boundaries According To Difficulty (math_in2 is n+1)
#         # Easy (6 to 8 items)
#         execute if score difficulty Settings matches 1 run scoreboard players set math_in1 em 6
#         execute if score difficulty Settings matches 1 run scoreboard players set math_in2 em 9
#         # Medium (4 to 6 items)
#         execute if score difficulty Settings matches 2 run scoreboard players set math_in1 em 4
#         execute if score difficulty Settings matches 2 run scoreboard players set math_in2 em 7
#         # Hard (2 to 3 items)
#         execute if score difficulty Settings matches 3 run scoreboard players set math_in1 em 2
#         execute if score difficulty Settings matches 3 run scoreboard players set math_in2 em 4

#       # Soup Cans
#         # Generate Random Number
#         function em:math/randomp
#         # Increase Total
#         scoreboard players operation math_out em *= divisor RealContainerCount
#         scoreboard players operation soups ItemsBunker = math_out em

#       # Water Bottles
#         # Generate Random Number
#         function em:math/randomp
#         # Increase Total
#         scoreboard players operation math_out em *= divisor RealContainerCount
#         scoreboard players operation waters ItemsBunker = math_out em

#     # Character
#       # Easy
#       execute if score difficulty Settings matches 1 run loot insert 32 58 -7 loot cm:chests/survival_easy_characters
#       # Medium
#       execute if score difficulty Settings matches 2 run loot insert 32 58 -7 loot cm:chests/survival_normal_characters
#       # Hard
#       execute if score difficulty Settings matches 3 run loot insert 32 58 -7 loot cm:chests/survival_hard_characters

#     # Bonous Bunker Stock
#       # Easy And Medium
#       execute if score difficulty Settings matches 1..2 run schedule function mc:utility/scavenge/load_bonous_items 0.2s

#     # Declare New Day
#     schedule function mc:states/8_bunker/manage_day 3s

#   # Set Music
#   scoreboard players set music GameStatus 3
#   function mc:utility/music/music_loop

#   # Goto Bunker
#   function mc:utility/tp/tp_bunker

#   # Remove Blindness
#   effect clear @p[team=Player]