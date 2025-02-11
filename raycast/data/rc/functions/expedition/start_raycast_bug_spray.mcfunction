# Set Cooldown
scoreboard players set @s GunCooldownTick 9

# Set Damage
data modify storage minecraft:gundamage headDamage set value 5
data modify storage minecraft:gundamage bodyDamage set value 5
data modify storage minecraft:gundamage legDamage set value 5

# Sound
playsound minecraft:entity.silverfish.hurt master @p ~ ~ ~ 1 2 1

# Decrement Ammo
clear @s minecraft:white_dye[custom_data={bugSprayAmmo:1b}] 1

# Anchor to the eyes and position with vector coordinates (Remove if not running from eyes of entity)
execute anchored eyes positioned ^ ^ ^ run function rc:expedition/raycast_bug_spray