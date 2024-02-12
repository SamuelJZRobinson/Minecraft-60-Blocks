# Notes
  # Called from tf_raycast:raycast upon any targets whose hitbox collides with the raycast
  # Setting the max range according to the GunType will apply damage multiple times
  # bodyshot starts from the minimum headshot y level and uses the formula: legshot maxY - headshot minY = bodyshot maxY

# Load Mob Health
execute store result score health MobHealth run data get entity @s Health 10

execute if entity @s[type=!#tf_raycast:other_hitbox] run function tf_raycast:hitboxes/player_hitbox
execute if entity @s[type=minecraft:spider] run function tf_raycast:hitboxes/spider_hitbox
execute if entity @s[type=minecraft:cave_spider] run function tf_raycast:hitboxes/cave_spider_hitbox
execute if entity @s[type=minecraft:endermite] run function tf_raycast:hitboxes/endermite_hitbox
execute if entity @s[type=minecraft:slime,nbt={Size:4}] run function tf_raycast:hitboxes/slime_size_four_hitbox
execute if entity @s[type=minecraft:slime,nbt={Size:1}] run function tf_raycast:hitboxes/slime_size_one_hitbox
execute if entity @s[type=minecraft:slime,nbt={Size:0}] run function tf_raycast:hitboxes/slime_size_zero_hitbox
execute if entity @s[type=minecraft:zoglin] run function tf_raycast:hitboxes/zoglin_hitbox
execute if entity @s[type=minecraft:creeper] run function tf_raycast:hitboxes/creeper_hitbox
execute if entity @s[type=minecraft:enderman] run function tf_raycast:hitboxes/enderman_hitbox
execute if entity @s[type=minecraft:ravager] run function tf_raycast:hitboxes/ravager_hitbox
execute if entity @s[type=minecraft:warden] run function tf_raycast:hitboxes/warden_hitbox

# Override Mob Health
execute store result entity @s Health float 0.1 run scoreboard players get health MobHealth

# Particle
particle angry_villager ~ ~ ~ 0.25 0.25 0.25 0 4 normal @a

# End raycast at max range (outside map)
scoreboard players set .distance tf_rc 1280