# Set Scores
execute if score prepareExpedition MenuExplore matches 1 run scoreboard players set expeditionActive MenuExplore 1
scoreboard players set prepareExpedition MenuExplore 0

# Start Expedition If No Character Sent
execute if score characterSent MenuExplore matches 0 if score expeditionActive MenuExplore matches 1 if score characterSelect MenuExplore matches 1.. run function cm:pages/submit/expedition/setup_expedition