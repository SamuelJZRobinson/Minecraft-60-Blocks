# Set Score
scoreboard players add gamemode Settings 1
execute unless score gamemode Settings matches ..4 run scoreboard players set gamemode Settings 1

# Render
function mc:states/stages/2_lobby/merge/merge_gamemode