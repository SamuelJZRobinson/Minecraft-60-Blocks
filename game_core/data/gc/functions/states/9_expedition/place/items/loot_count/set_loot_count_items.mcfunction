# Reset Scores
scoreboard players set itemsLeft ItemsExpedition 0

# Chance
execute if score lootLeft ItemsExpedition matches 1.. store result score itemsLeft ItemsExpedition run random value 0..1
execute if score lootLeft ItemsExpedition matches 2.. store result score itemsLeft ItemsExpedition run random value 0..2
execute if score lootLeft ItemsExpedition matches 4.. store result score itemsLeft ItemsExpedition run random value 1..3
execute if score lootLeft ItemsExpedition matches 6.. store result score itemsLeft ItemsExpedition run random value 1..4
execute if score lootLeft ItemsExpedition matches 8.. store result score itemsLeft ItemsExpedition run random value 2..4

# Keep In Range
execute if score itemsLeft ItemsExpedition > lootLeft ItemsExpedition run scoreboard players operation itemsLeft ItemsExpedition = lootLeft ItemsExpedition