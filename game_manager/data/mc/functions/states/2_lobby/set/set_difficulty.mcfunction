# Set Score
scoreboard players add difficulty Settings 1
execute unless score difficulty Settings matches ..3 run scoreboard players set difficulty Settings 1

# Sound
function mc:sounds/menu_click

# Render
function mc:states/2_lobby/merge/merge_difficulty