# Check Y Level
execute as @p[team=Playing] store result score playerY ChestMenuExplore run data get entity @s Pos[1]

# Update Map
execute unless score prePlayerY ChestMenuExplore = playerY ChestMenuExplore as @p[team=Playing] at @s run function mc:timers/expedition/update_map_update