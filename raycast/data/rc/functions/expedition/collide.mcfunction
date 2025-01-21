# Notes
  # Called from rc:raycast upon any targets whose hitbox collides with the raycast
  # bodyshot starts from the minimum headshot y level and uses the formula: legshot maxY - headshot minY = bodyshot maxY

execute if entity @s[type=!#rc:mobs_normal] run function rc:expedition/hitboxes/hitbox_player with storage minecraft:gundamage
execute if entity @s[type=minecraft:spider] run function rc:expedition/hitboxes/hitbox_spider with storage minecraft:gundamage
execute if entity @s[type=minecraft:cave_spider] run function rc:expedition/hitboxes/hitbox_cave_spider with storage minecraft:gundamage
execute if entity @s[type=minecraft:endermite] run function rc:expedition/hitboxes/hitbox_endermite with storage minecraft:gundamage
execute if entity @s[type=minecraft:zoglin] run function rc:expedition/hitboxes/hitbox_zoglin with storage minecraft:gundamage
execute if entity @s[type=minecraft:creeper] run function rc:expedition/hitboxes/hitbox_creeper with storage minecraft:gundamage
execute if entity @s[type=minecraft:enderman] run function rc:expedition/hitboxes/hitbox_enderman with storage minecraft:gundamage
execute if entity @s[type=minecraft:ravager] run function rc:expedition/hitboxes/hitbox_ravager with storage minecraft:gundamage
execute if entity @s[type=minecraft:warden] run function rc:expedition/hitboxes/hitbox_warden with storage minecraft:gundamage

# Particle
function rc:utility/particles/expedition/mob_hit

# End raycast at max range (outside map)
scoreboard players set .distance tf_rc 1280