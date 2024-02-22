scoreboard players operation memory em = TIMMY_BOOST StatusOdds
function em:math/get_percentage
execute if score math_out em matches 1 run scoreboard players add maxLoot ItemsExpedition 1
scoreboard players set math_out em 0