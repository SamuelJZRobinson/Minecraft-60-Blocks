# Notes
  # Call this on entities which launch the raycast
  # Bug spray deals 20% more damage per shot on average than the gun and has 8gunAmmo:1bs * (25/5)firerate * 0.8% gas

# Cooldown
execute if score @s GunType matches 1 run scoreboard players set @s GunCooldownTick 25
execute if score @s GunType matches 3 run scoreboard players set @s GunCooldownTick 1

# Set Damage
execute if score @s GunType matches 1 run scoreboard players set headDamage MobHealth 140
execute if score @s GunType matches 1 run scoreboard players set bodyDamage MobHealth 70
execute if score @s GunType matches 1 run scoreboard players set legDamage MobHealth 40
execute if score @s GunType matches 2 run scoreboard players set headDamage MobHealth 34
execute if score @s GunType matches 2 run scoreboard players set bodyDamage MobHealth 17
execute if score @s GunType matches 2 run scoreboard players set legDamage MobHealth 10

# Remove gunAmmo:1b
execute if score @s GunType matches 1 run clear @s minecraft:iron_nugget{gunAmmo:1b} 1
execute if score @s GunType matches 2 run clear @s minecraft:white_dye{bugSprayAmmo:1b} 1
execute if score @s GunType matches 3 run clear @s minecraft:bone_meal{harmonicaAmmo:1b} 1

# Tag prevents current caster from being detected
tag @s add raycasting

# Play Gun Shot
execute if score @s GunType matches 1 run playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 1 0 0
execute if score @s GunType matches 2 run playsound minecraft:entity.silverfish.hurt master @p ~ ~ ~ 1 2 1

# Anchor to the eyes and position with vector coordinates (Remove if not running from eyes of entity)
execute if score @s GunType matches 1 anchored eyes positioned ^ ^ ^ run function tf_raycast:expedition/raycast_gun
execute if score @s GunType matches 2 anchored eyes positioned ^ ^ ^ run function tf_raycast:expedition/raycast_bug_spray
execute if score @s GunType matches 3 run function tf_raycast:expedition/harmonica_chance

# Remove the raycasting tag after raycast completion to prepare for the next player
tag @s remove raycasting
scoreboard players reset .distance tf_rc