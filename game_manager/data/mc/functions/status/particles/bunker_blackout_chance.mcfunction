# Setup Dice
scoreboard players set mode em 1
scoreboard players set dynamicDifficulty em 0
scoreboard players set notRandom em 0
scoreboard players set startOne em 1

# Blackout Chance (% in max, n+1)
scoreboard players operation memory em = BUNKER_BLACKOUT StatusOdds
function em:math/get_percentage
execute if score math_out em matches 1 run fill 3 59 31 -3 59 31 air replace minecraft:redstone_block
execute if score math_out em matches 1 run playsound minecraft:entity.bee.sting block @a 0 59 31 0.75 2 0
execute if score math_out em matches 1 run schedule function mc:status/particles/bunker_blackout_fix 10t replace
scoreboard players set math_out em 0