# Notes
  # Call this on entities which launch the raycast

# Cooldown
scoreboard players set @s GunCooldown 3

# Tag prevents current caster from being detected
tag @s add raycasting

# Anchor to the eyes and position with vector coordinates (Remove if not running from eyes of entity)
execute anchored eyes positioned ^ ^ ^ run function tf_raycast:raycast_bunker

# Remove the raycasting tag after raycast completion to prepare for the next player
tag @s remove raycasting
scoreboard players reset .distance tf_rc