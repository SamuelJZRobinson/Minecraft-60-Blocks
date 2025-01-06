# Note
  # Run from tf_raycast:expedition/start_raycast

# Using dx for precise hitbox detection
# Parameters:
#     Edit not_mob.json in tags/entities to change which entities will not be targetted
#     Change the "positioned" offsets to change projectile size
#       - If > 1 block, just use one dx detection
execute as @e[tag=!raycasting,type=!#tf_raycast:not_mob,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[type=#tf_raycast:bunker_detect,tag=bunkerHitbox,dx=0] positioned ~0.99 ~0.99 ~0.99 run function tf_raycast:bunker/collide_bunker
scoreboard players add .distance tf_rc 1

# Make raycast visible
# particle dust 0.827 0.827 0.827 0.25 ~ ~ ~ 0 0 0 0 0 normal

# Repeat the raycast if certain conditions are met (distance is float with scale 10)
# Parameters:
#    (score after "matches") * (accuracy increment) = range
#    The "positioned" value specifies the precision
#    Edit raycast_pass.json in tags/blocks to change which blocks the raycast ignores
#    "rotated" controls arc/curve of raycast path
execute if score .distance tf_rc matches ..90 positioned ^ ^ ^0.1 rotated ~ ~ if block ~ ~ ~ #tf_raycast:raycast_pass run function tf_raycast:bunker/raycast_bunker