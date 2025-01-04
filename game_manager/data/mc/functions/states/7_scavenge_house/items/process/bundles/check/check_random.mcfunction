# Notes
  # By default randomp will select a number one less than math_in2 which matches the max index range
  # Do not place the next function call below the loop to avoid running it for each item owed

# Get Random Item Index (n in max)
execute store result score itemsTotal scavenges run data get storage minecraft:scavenge randomId
scoreboard players set math_in1 em 0
scoreboard players operation math_in2 em = itemsTotal scavenges
function em:math/randomp

# Append Item To CheckId
execute if score math_out em matches 0 run data modify storage minecraft:scavenge savedItemIds append from storage minecraft:scavenge randomId[0]
execute if score math_out em matches 0 run data remove storage minecraft:scavenge randomId[0]
execute if score math_out em matches 1 run data modify storage minecraft:scavenge savedItemIds append from storage minecraft:scavenge randomId[1]
execute if score math_out em matches 1 run data remove storage minecraft:scavenge randomId[1]
execute if score math_out em matches 2 run data modify storage minecraft:scavenge savedItemIds append from storage minecraft:scavenge randomId[2]
execute if score math_out em matches 2 run data remove storage minecraft:scavenge randomId[2]
execute if score math_out em matches 3 run data modify storage minecraft:scavenge savedItemIds append from storage minecraft:scavenge randomId[3]
execute if score math_out em matches 3 run data remove storage minecraft:scavenge randomId[3]
execute if score math_out em matches 4 run data modify storage minecraft:scavenge savedItemIds append from storage minecraft:scavenge randomId[4]
execute if score math_out em matches 4 run data remove storage minecraft:scavenge randomId[4]
execute if score math_out em matches 5 run data modify storage minecraft:scavenge savedItemIds append from storage minecraft:scavenge randomId[5]
execute if score math_out em matches 5 run data remove storage minecraft:scavenge randomId[5]
execute if score math_out em matches 6 run data modify storage minecraft:scavenge savedItemIds append from storage minecraft:scavenge randomId[6]
execute if score math_out em matches 6 run data remove storage minecraft:scavenge randomId[6]
execute if score math_out em matches 7 run data modify storage minecraft:scavenge savedItemIds append from storage minecraft:scavenge randomId[7]
execute if score math_out em matches 7 run data remove storage minecraft:scavenge randomId[7]
execute if score math_out em matches 8 run data modify storage minecraft:scavenge savedItemIds append from storage minecraft:scavenge randomId[8]
execute if score math_out em matches 8 run data remove storage minecraft:scavenge randomId[8]
execute if score math_out em matches 9 run data modify storage minecraft:scavenge savedItemIds append from storage minecraft:scavenge randomId[9]
execute if score math_out em matches 9 run data remove storage minecraft:scavenge randomId[9]
execute if score math_out em matches 10 run data modify storage minecraft:scavenge savedItemIds append from storage minecraft:scavenge randomId[10]
execute if score math_out em matches 10 run data remove storage minecraft:scavenge randomId[10]
execute if score math_out em matches 11 run data modify storage minecraft:scavenge savedItemIds append from storage minecraft:scavenge randomId[11]
execute if score math_out em matches 11 run data remove storage minecraft:scavenge randomId[11]
execute if score math_out em matches 12 run data modify storage minecraft:scavenge savedItemIds append from storage minecraft:scavenge randomId[12]
execute if score math_out em matches 12 run data remove storage minecraft:scavenge randomId[12]
execute if score math_out em matches 13 run data modify storage minecraft:scavenge savedItemIds append from storage minecraft:scavenge randomId[13]
execute if score math_out em matches 13 run data remove storage minecraft:scavenge randomId[13]
execute if score math_out em matches 14 run data modify storage minecraft:scavenge savedItemIds append from storage minecraft:scavenge randomId[14]
execute if score math_out em matches 14 run data remove storage minecraft:scavenge randomId[14]
execute if score math_out em matches 15 run data modify storage minecraft:scavenge savedItemIds append from storage minecraft:scavenge randomId[15]
execute if score math_out em matches 15 run data remove storage minecraft:scavenge randomId[15]
execute if score math_out em matches 16 run data modify storage minecraft:scavenge savedItemIds append from storage minecraft:scavenge randomId[16]
execute if score math_out em matches 16 run data remove storage minecraft:scavenge randomId[16]
execute if score math_out em matches 17 run data modify storage minecraft:scavenge savedItemIds append from storage minecraft:scavenge randomId[17]
execute if score math_out em matches 17 run data remove storage minecraft:scavenge randomId[17]
execute if score math_out em matches 18 run data modify storage minecraft:scavenge savedItemIds append from storage minecraft:scavenge randomId[18]
execute if score math_out em matches 18 run data remove storage minecraft:scavenge randomId[18]
execute if score math_out em matches 19 run data modify storage minecraft:scavenge savedItemIds append from storage minecraft:scavenge randomId[19]
execute if score math_out em matches 19 run data remove storage minecraft:scavenge randomId[19]
execute if score math_out em matches 20 run data modify storage minecraft:scavenge savedItemIds append from storage minecraft:scavenge randomId[20]
execute if score math_out em matches 20 run data remove storage minecraft:scavenge randomId[20]
execute if score math_out em matches 21 run data modify storage minecraft:scavenge savedItemIds append from storage minecraft:scavenge randomId[21]
execute if score math_out em matches 21 run data remove storage minecraft:scavenge randomId[21]

# Adjust Scores
execute if score stage scavenges matches 7 run scoreboard players operation gearIndexRemove ItemsExpedition = math_out em
scoreboard players set math_out em 0
scoreboard players remove itemsOwed scavenges 1

# Call Next Function
execute if score itemsOwed scavenges matches 0 run data remove storage minecraft:scavenge randomId
execute if score stage scavenges matches 2 if score itemsOwed scavenges matches 0 run function mc:utility/scavenge/process/bundles/check/check_main_add
execute if score stage scavenges matches 6 if score itemsOwed scavenges matches 0 run function mc:utility/scavenge/process/bundles/check/check_main_add
execute if score stage scavenges matches 4 if score itemsOwed scavenges matches 0 run function mc:utility/scavenge/process/bundles/check/check_main_remove
execute if score stage scavenges matches 7 if score itemsOwed scavenges matches 0 run function mc:utility/scavenge/process/bundles/check/check_main_remove

# Loop
execute if score itemsOwed scavenges matches 1.. run function mc:utility/scavenge/process/bundles/check/check_random