# Set Score
scoreboard players add doTed Settings 1
execute unless score doTed Settings matches ..1 run scoreboard players set doTed Settings 0

# Render
function mc:states/stages/2_lobby/merge/merge_character