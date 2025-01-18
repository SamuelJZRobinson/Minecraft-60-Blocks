# Note
  # Run from tf_raycast:expedition/start_raycast

# Using dx for precise hitbox detection
# Parameters:
#     Edit not_mob.json in tags/entities to change which entities will not be targetted
#     Change the "positioned" offsets to change projectile size
#       - If > 1 block, just use one dx detection
execute as @e[tag=!raycasting,type=!#tf_raycast:not_mob,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run function tf_raycast:expedition/collide
scoreboard players add .distance tf_rc 1

# Make raycast visible
function tf_raycast:utility/particles/expedition/gun_tracer

# Repeat the raycast if certain conditions are met (distance is float with scale 10)
# Parameters:
#    (score after "matches") * (accuracy increment) = range
#    The "positioned" value specifies the precision
#    Edit raycast_pass.json in tags/blocks to change which blocks the raycast ignores
#    "rotated" controls arc/curve of raycast path
execute if score .distance tf_rc matches ..1280 positioned ^ ^ ^0.1 rotated ~ ~ if block ~ ~ ~ #tf_raycast:raycast_pass run function tf_raycast:expedition/raycast_gun