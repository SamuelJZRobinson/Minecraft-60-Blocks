# Start Expedition
execute if score expeditionReady MenuExpedition matches 1 if score characterSent MenuExpedition matches 0 if score characterSelect MenuExpedition matches 1.. run function cm:pages/submit/expedition/set_expedition

# Prepare Expedition
execute if score expeditionPrepared MenuExpedition matches 1 run scoreboard players set expeditionReady MenuExpedition 1
scoreboard players set expeditionPrepared MenuExpedition 0

# Reset Scores
scoreboard players set characterSelect MenuExpedition 0
scoreboard players set mapSelect MenuExpedition 1