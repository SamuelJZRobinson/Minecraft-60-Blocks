# Reset Scores
scoreboard players set foodLeft ItemsExpedition 0

# Get Remainder
execute if score lootLeft ItemsExpedition matches 1.. run scoreboard players operation foodLeft ItemsExpedition = lootLeft ItemsExpedition
execute if score lootLeft ItemsExpedition matches 1.. run scoreboard players operation foodLeft ItemsExpedition -= nonFoodLeft ItemsExpedition