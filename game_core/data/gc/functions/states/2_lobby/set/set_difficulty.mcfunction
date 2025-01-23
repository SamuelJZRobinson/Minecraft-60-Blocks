# Set Score
scoreboard players add difficulty Settings 1
execute unless score difficulty Settings matches ..3 run scoreboard players set difficulty Settings 1

# Render
execute positioned 17 36 15 run function gc:states/2_lobby/merge/merge_difficulty