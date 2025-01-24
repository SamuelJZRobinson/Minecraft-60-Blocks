# Notes
  # Call this on entities which launch the raycast

# Tag prevents current caster from being detected
tag @s add raycasting

# Create Projectile
execute at @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{gun:1b}}},Inventory:[{id:"minecraft:iron_nugget",components:{"minecraft:custom_data":{gunAmmo:1b}}}]}] run function rc:expedition/start_raycast_gun
execute at @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{bugSpray:1b}}},Inventory:[{id:"minecraft:white_dye",components:{"minecraft:custom_data":{bugSprayAmmo:1b}}}]}] run function rc:expedition/start_raycast_bug_spray
execute at @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{harmonica:1b}}},Inventory:[{id:"minecraft:bone_meal",components:{"minecraft:custom_data":{harmonicaAmmo:1b}}}]}] run function rc:expedition/start_raycast_harmonica

# Remove the raycasting tag after raycast completion to prepare for the next player
tag @s remove raycasting
scoreboard players reset .distance tf_rc