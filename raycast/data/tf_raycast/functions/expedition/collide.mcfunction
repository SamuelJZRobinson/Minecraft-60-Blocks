# Notes
  # Called from tf_raycast:raycast upon any targets whose hitbox collides with the raycast
  # Setting the max range according to the GunType will apply damage multiple times
  # bodyshot starts from the minimum headshot y level and uses the formula: legshot maxY - headshot minY = bodyshot maxY

execute if entity @s[type=!#tf_raycast:other_hitbox] run function tf_raycast:expedition/hitboxes/hitbox_player with storage minecraft:gundamage
execute if entity @s[type=minecraft:spider] run function tf_raycast:expedition/hitboxes/hitbox_spider with storage minecraft:gundamage
execute if entity @s[type=minecraft:cave_spider] run function tf_raycast:expedition/hitboxes/hitbox_cave_spider with storage minecraft:gundamage
execute if entity @s[type=minecraft:endermite] run function tf_raycast:expedition/hitboxes/hitbox_endermite with storage minecraft:gundamage
execute if entity @s[type=minecraft:zoglin] run function tf_raycast:expedition/hitboxes/hitbox_zoglin with storage minecraft:gundamage
execute if entity @s[type=minecraft:creeper] run function tf_raycast:expedition/hitboxes/hitbox_creeper with storage minecraft:gundamage
execute if entity @s[type=minecraft:enderman] run function tf_raycast:expedition/hitboxes/hitbox_enderman with storage minecraft:gundamage
execute if entity @s[type=minecraft:ravager] run function tf_raycast:expedition/hitboxes/hitbox_ravager with storage minecraft:gundamage
execute if entity @s[type=minecraft:warden] run function tf_raycast:expedition/hitboxes/hitbox_warden with storage minecraft:gundamage

# Particle
particle angry_villager ~ ~ ~ 0.25 0.25 0.25 0 4 normal @a

# End raycast at max range (outside map)
scoreboard players set .distance tf_rc 1280