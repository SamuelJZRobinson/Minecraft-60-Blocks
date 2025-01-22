# Notes
  # Base loot corresponds to expedition duration.

# Short
execute if score mapVisited MenuExpedition matches 1..4 store result score lootLeft ItemsExpedition run random value 1..5
# Medium
execute if score mapVisited MenuExpedition matches 5..7 store result score lootLeft ItemsExpedition run random value 2..6
# Long
execute if score mapVisited MenuExpedition matches 8 store result score lootLeft ItemsExpedition run random value 3..7