# Set Score
scoreboard players add doPovExpedition Settings 1
execute unless score doPovExpedition Settings matches ..1 run scoreboard players set doPovExpedition Settings 0

# Render
function mc:states/stages/2_lobby/merge/merge_expedition