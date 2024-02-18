# Prepare
execute if score prepare ChestMenuExplore matches 1 run scoreboard players set expeditionPrepared ChestMenuExplore 1
scoreboard players set prepare ChestMenuExplore 0
# Setup
execute if score characterSent ChestMenuExplore matches 0 if score expeditionPrepared ChestMenuExplore matches 1 if score characterSelect ChestMenuExplore matches 1.. run function cm:pages/submit/expedition_setup