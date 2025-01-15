# Set Scores
execute if score prepareExpedition MenuExpedition matches 1 run scoreboard players set expeditionReady MenuExpedition 1
scoreboard players set prepareExpedition MenuExpedition 0

# Start
execute if score expeditionReady MenuExpedition matches 1 if score characterSent MenuExpedition matches 0 if score characterSelect MenuExpedition matches 1.. run function cm:pages/submit/expedition/manage_expedition