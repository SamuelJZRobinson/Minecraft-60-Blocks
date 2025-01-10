# Notes
  # Call this on entities which launch the raycast
  # Bug spray deals 20% more damage per shot on average than the gun and has 8gunAmmo:1bs * (25/5)firerate * 0.8% gas

# Tag prevents current caster from being detected
tag @s add raycasting

# Set Guns
execute if score @s GunType matches 1 run function tf_raycast:expedition/start_raycast_gun
execute if score @s GunType matches 2 run function tf_raycast:expedition/start_raycast_bug_spray
execute if score @s GunType matches 3 run function tf_raycast:expedition/start_raycast_harmonica

# Remove the raycasting tag after raycast completion to prepare for the next player
tag @s remove raycasting
scoreboard players reset .distance tf_rc