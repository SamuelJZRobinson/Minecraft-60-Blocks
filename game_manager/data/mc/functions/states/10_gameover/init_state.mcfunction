# Set Scores
scoreboard players set music GameStatus 2

# Clear Locations
kill @e[type=armor_stand,tag=bunkerMarker]
kill @e[type=armor_stand,tag=bunkerStatus]
kill @e[type=armor_stand,tag=bunkerCount]
kill @e[type=area_effect_cloud,tag=bunkerHitbox]

# Surface
schedule function mc:states/10_gameover/show/show_surface_scene 1s replace