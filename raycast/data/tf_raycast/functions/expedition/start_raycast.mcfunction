# Notes
  # Call this on entities which launch the raycast

# Tag prevents current caster from being detected
tag @s add raycasting

# Create Projectile
execute at @s[nbt={SelectedItem:{tag:{gun:1b}},Inventory:[{id:"minecraft:iron_nugget",tag:{gunAmmo:1b}}]}] run function tf_raycast:expedition/start_raycast_gun
execute at @s[nbt={SelectedItem:{tag:{bugSpray:1b}},Inventory:[{id:"minecraft:white_dye",tag:{bugSprayAmmo:1b}}]}] run function tf_raycast:expedition/start_raycast_bug_spray
execute at @s[nbt={SelectedItem:{tag:{harmonica:1b}},Inventory:[{id:"minecraft:bone_meal",tag:{harmonicaAmmo:1b}}]}] run function tf_raycast:expedition/start_raycast_harmonica

# Remove the raycasting tag after raycast completion to prepare for the next player
tag @s remove raycasting
scoreboard players reset .distance tf_rc