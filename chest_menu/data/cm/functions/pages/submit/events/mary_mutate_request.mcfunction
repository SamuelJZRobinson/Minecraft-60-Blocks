# Generate Random Number (1 in x, n+1)
scoreboard players set math_in1 em 1
scoreboard players operation math_in2 em = MUTATE StatusOdds
scoreboard players add math_in2 em 1
execute if score mutant MaryStatus matches 0 run function em:math/randomp
execute if score math_out em matches 1 run scoreboard players set mutant MaryStatus 1

# Refresh Scores
scoreboard players set math_out em 0
scoreboard players set mutateRequest MenuEvent 0