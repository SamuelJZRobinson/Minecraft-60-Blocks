# Journal Managed By cm:menu/submit/manage_events
execute if score medkit ItemsBunker matches ..0 run data modify storage minecraft:atomicdrill dialogue append value "Take this spare medkit to practice with"
execute if score medkit ItemsBunker matches ..0 run function gc:states/5_atomic_drill/show/show_dialogue_loop
execute if score medkit ItemsBunker matches ..0 run scoreboard players set medkit ItemsBunker 2
function gc:states/5_atomic_drill/force_expedition_return