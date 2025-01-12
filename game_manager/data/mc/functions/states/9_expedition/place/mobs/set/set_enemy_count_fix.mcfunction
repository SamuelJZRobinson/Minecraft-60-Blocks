# Balance Enemies
scoreboard players set math_in1 em 1
scoreboard players set math_in2 em 3
execute unless score diffirence MobsExpedition matches 0 run function em:math/randomp
execute if score diffirence MobsExpedition matches 1.. if score math_out em matches 1 run scoreboard players remove tierOne MobsExpedition 1
execute if score diffirence MobsExpedition matches 1.. if score math_out em matches 2 if score tierTwo MobsExpedition matches 0 run scoreboard players remove tierOne MobsExpedition 1
execute if score diffirence MobsExpedition matches 1.. if score math_out em matches 2 if score tierTwo MobsExpedition matches 1.. run scoreboard players remove tierTwo MobsExpedition 1
execute if score diffirence MobsExpedition matches ..-1 if score math_out em matches 1 run scoreboard players add tierOne MobsExpedition 1
execute if score diffirence MobsExpedition matches ..-1 if score math_out em matches 2 run scoreboard players add tierTwo MobsExpedition 1

# Adjust Scores
execute if score diffirence MobsExpedition matches 1.. run scoreboard players remove diffirence MobsExpedition 1
execute if score diffirence MobsExpedition matches ..-1 run scoreboard players add diffirence MobsExpedition 1

# Loop
execute unless score diffirence MobsExpedition matches 0 run function mc:states/9_expedition/place/items/set/set/enemy_count_fix