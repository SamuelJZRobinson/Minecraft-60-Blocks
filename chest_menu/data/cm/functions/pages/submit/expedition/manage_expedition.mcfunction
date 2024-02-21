# Prepare
execute if score prepare MenuExplore matches 1 run scoreboard players set expeditionPrepared MenuExplore 1
scoreboard players set prepare MenuExplore 0
# Setup
execute if score characterSent MenuExplore matches 0 if score expeditionPrepared MenuExplore matches 1 if score characterSelect MenuExplore matches 1.. run function cm:pages/submit/expedition_setup