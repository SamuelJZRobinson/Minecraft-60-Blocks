# Reset Scores
scoreboard players set nonFoodLeft ItemsExpedition 0

# Chance
execute if score lootLeft ItemsExpedition matches ..2 store result score nonFoodLeft ItemsExpedition run random value 0..2
execute if score lootLeft ItemsExpedition matches ..4 store result score nonFoodLeft ItemsExpedition run random value 1..3
execute if score lootLeft ItemsExpedition matches ..6 store result score nonFoodLeft ItemsExpedition run random value 2..4
execute if score lootLeft ItemsExpedition matches ..8 store result score nonFoodLeft ItemsExpedition run random value 3..4

# Keep In Range
execute if score nonFoodLeft ItemsExpedition > lootLeft ItemsExpedition run scoreboard players operation nonFoodLeft ItemsExpedition = lootLeft ItemsExpedition