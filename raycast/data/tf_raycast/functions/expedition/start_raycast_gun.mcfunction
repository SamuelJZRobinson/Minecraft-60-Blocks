# Set Cooldown
scoreboard players set @s GunCooldownTick 18

# Set Damage
data modify storage minecraft:gundamage headDamage set value 20
data modify storage minecraft:gundamage bodyDamage set value 10
data modify storage minecraft:gundamage legDamage set value 5

# Sound
playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 1 0 0

# Decrement Ammo
clear @s minecraft:iron_nugget{gunAmmo:1b} 1

# Anchor to the eyes and position with vector coordinates (Remove if not running from eyes of entity)
execute anchored eyes positioned ^ ^ ^ run function tf_raycast:expedition/raycast_gun