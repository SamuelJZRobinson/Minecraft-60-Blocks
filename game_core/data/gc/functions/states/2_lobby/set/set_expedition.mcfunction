# Set Score
scoreboard players add doInPersonExpedition Settings 1
execute unless score doInPersonExpedition Settings matches ..1 run scoreboard players set doInPersonExpedition Settings 0

# Render
execute positioned 17 36 15 run function gc:states/2_lobby/merge/merge_expedition