# Journal Managed By cm:menu/submit/manage_events
# Remove Chest Menu
setblock -8 -48 -9 minecraft:air
kill @e[type=minecraft:armor_stand,tag=menuText]
# Break The Script
schedule clear mc:states/5_atomic_drill/task/task_loop