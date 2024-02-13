# Set Score
scoreboard players add difficulty Settings 1
execute unless score difficulty Settings matches ..3 run scoreboard players set difficulty Settings 1

# Render
function mc:states/stages/2_lobby/merge/merge_difficulty