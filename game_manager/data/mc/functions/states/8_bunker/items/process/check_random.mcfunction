# # Notes
#   # By default randomp will select a number one less than math_in2 which matches the max index range
#   # Do not place the next function call below the loop to avoid running it for each item owed

# # Get Random Item Index (n in max)
# execute store result score itemsLeft ItemsBundles run data get storage minecraft:itemsprocess randomItemIds
# scoreboard players set math_in1 em 0
# scoreboard players operation math_in2 em = itemsLeft ItemsBundles
# function em:math/randomp

# # Append Item To CheckId
# execute if score math_out em matches 0 run data modify storage minecraft:itemsprocess scavengeGainedItemIds append from storage minecraft:itemsprocess randomItemIds[0]
# execute if score math_out em matches 0 run data remove storage minecraft:itemsprocess randomItemIds[0]
# execute if score math_out em matches 1 run data modify storage minecraft:itemsprocess scavengeGainedItemIds append from storage minecraft:itemsprocess randomItemIds[1]
# execute if score math_out em matches 1 run data remove storage minecraft:itemsprocess randomItemIds[1]
# execute if score math_out em matches 2 run data modify storage minecraft:itemsprocess scavengeGainedItemIds append from storage minecraft:itemsprocess randomItemIds[2]
# execute if score math_out em matches 2 run data remove storage minecraft:itemsprocess randomItemIds[2]
# execute if score math_out em matches 3 run data modify storage minecraft:itemsprocess scavengeGainedItemIds append from storage minecraft:itemsprocess randomItemIds[3]
# execute if score math_out em matches 3 run data remove storage minecraft:itemsprocess randomItemIds[3]
# execute if score math_out em matches 4 run data modify storage minecraft:itemsprocess scavengeGainedItemIds append from storage minecraft:itemsprocess randomItemIds[4]
# execute if score math_out em matches 4 run data remove storage minecraft:itemsprocess randomItemIds[4]
# execute if score math_out em matches 5 run data modify storage minecraft:itemsprocess scavengeGainedItemIds append from storage minecraft:itemsprocess randomItemIds[5]
# execute if score math_out em matches 5 run data remove storage minecraft:itemsprocess randomItemIds[5]
# execute if score math_out em matches 6 run data modify storage minecraft:itemsprocess scavengeGainedItemIds append from storage minecraft:itemsprocess randomItemIds[6]
# execute if score math_out em matches 6 run data remove storage minecraft:itemsprocess randomItemIds[6]
# execute if score math_out em matches 7 run data modify storage minecraft:itemsprocess scavengeGainedItemIds append from storage minecraft:itemsprocess randomItemIds[7]
# execute if score math_out em matches 7 run data remove storage minecraft:itemsprocess randomItemIds[7]
# execute if score math_out em matches 8 run data modify storage minecraft:itemsprocess scavengeGainedItemIds append from storage minecraft:itemsprocess randomItemIds[8]
# execute if score math_out em matches 8 run data remove storage minecraft:itemsprocess randomItemIds[8]
# execute if score math_out em matches 9 run data modify storage minecraft:itemsprocess scavengeGainedItemIds append from storage minecraft:itemsprocess randomItemIds[9]
# execute if score math_out em matches 9 run data remove storage minecraft:itemsprocess randomItemIds[9]
# execute if score math_out em matches 10 run data modify storage minecraft:itemsprocess scavengeGainedItemIds append from storage minecraft:itemsprocess randomItemIds[10]
# execute if score math_out em matches 10 run data remove storage minecraft:itemsprocess randomItemIds[10]
# execute if score math_out em matches 11 run data modify storage minecraft:itemsprocess scavengeGainedItemIds append from storage minecraft:itemsprocess randomItemIds[11]
# execute if score math_out em matches 11 run data remove storage minecraft:itemsprocess randomItemIds[11]
# execute if score math_out em matches 12 run data modify storage minecraft:itemsprocess scavengeGainedItemIds append from storage minecraft:itemsprocess randomItemIds[12]
# execute if score math_out em matches 12 run data remove storage minecraft:itemsprocess randomItemIds[12]
# execute if score math_out em matches 13 run data modify storage minecraft:itemsprocess scavengeGainedItemIds append from storage minecraft:itemsprocess randomItemIds[13]
# execute if score math_out em matches 13 run data remove storage minecraft:itemsprocess randomItemIds[13]
# execute if score math_out em matches 14 run data modify storage minecraft:itemsprocess scavengeGainedItemIds append from storage minecraft:itemsprocess randomItemIds[14]
# execute if score math_out em matches 14 run data remove storage minecraft:itemsprocess randomItemIds[14]
# execute if score math_out em matches 15 run data modify storage minecraft:itemsprocess scavengeGainedItemIds append from storage minecraft:itemsprocess randomItemIds[15]
# execute if score math_out em matches 15 run data remove storage minecraft:itemsprocess randomItemIds[15]
# execute if score math_out em matches 16 run data modify storage minecraft:itemsprocess scavengeGainedItemIds append from storage minecraft:itemsprocess randomItemIds[16]
# execute if score math_out em matches 16 run data remove storage minecraft:itemsprocess randomItemIds[16]
# execute if score math_out em matches 17 run data modify storage minecraft:itemsprocess scavengeGainedItemIds append from storage minecraft:itemsprocess randomItemIds[17]
# execute if score math_out em matches 17 run data remove storage minecraft:itemsprocess randomItemIds[17]
# execute if score math_out em matches 18 run data modify storage minecraft:itemsprocess scavengeGainedItemIds append from storage minecraft:itemsprocess randomItemIds[18]
# execute if score math_out em matches 18 run data remove storage minecraft:itemsprocess randomItemIds[18]
# execute if score math_out em matches 19 run data modify storage minecraft:itemsprocess scavengeGainedItemIds append from storage minecraft:itemsprocess randomItemIds[19]
# execute if score math_out em matches 19 run data remove storage minecraft:itemsprocess randomItemIds[19]
# execute if score math_out em matches 20 run data modify storage minecraft:itemsprocess scavengeGainedItemIds append from storage minecraft:itemsprocess randomItemIds[20]
# execute if score math_out em matches 20 run data remove storage minecraft:itemsprocess randomItemIds[20]
# execute if score math_out em matches 21 run data modify storage minecraft:itemsprocess scavengeGainedItemIds append from storage minecraft:itemsprocess randomItemIds[21]
# execute if score math_out em matches 21 run data remove storage minecraft:itemsprocess randomItemIds[21]

# # Adjust Scores
# execute if score stage ItemsBundles matches 7 run scoreboard players operation gearIndexRemove ItemsExpedition = math_out em
# scoreboard players set math_out em 0
# scoreboard players remove itemsOwed ItemsBundles 1

# # Call Next Function
# execute if score itemsOwed ItemsBundles matches 0 run data remove storage minecraft:itemsprocess randomItemIds
# execute if score stage ItemsBundles matches 2 if score itemsOwed ItemsBundles matches 0 run function mc:states/8_bunker/items/process/bundles/check/check_main_add
# execute if score stage ItemsBundles matches 6 if score itemsOwed ItemsBundles matches 0 run function mc:states/8_bunker/items/process/bundles/check/check_main_add
# execute if score stage ItemsBundles matches 4 if score itemsOwed ItemsBundles matches 0 run function mc:states/8_bunker/items/process/bundles/check/check_main_remove
# execute if score stage ItemsBundles matches 7 if score itemsOwed ItemsBundles matches 0 run function mc:states/8_bunker/items/process/bundles/check/check_main_remove

# # Loop
# execute if score itemsOwed ItemsBundles matches 1.. run function mc:states/8_bunker/items/process/bundles/check/check_random