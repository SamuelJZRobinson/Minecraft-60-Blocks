# Set Bonous Count
execute if score remainder ItemsHouse matches 1 store result score out Math run random value 0..1
execute if score remainder ItemsHouse matches 2 store result score out Math run random value 0..2
execute if score remainder ItemsHouse matches 3.. store result score out Math run random value 0..3
# Adjust Scores
scoreboard players operation hallway ItemsHouse += out Math
scoreboard players operation remainder ItemsHouse -= out Math