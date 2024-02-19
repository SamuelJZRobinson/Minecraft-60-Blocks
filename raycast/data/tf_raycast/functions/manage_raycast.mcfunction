# Trigger Item
execute as @s[scores={UseCarrotStick=1..}] run function tf_raycast:trigger

# Play Reload Sound
execute if score @s GunType matches 1 run playsound minecraft:block.iron_trapdoor.open player @s[scores={GunCooldown=4}] ~ ~ ~ 1 1.2 1
execute if score @s GunType matches 1 run playsound minecraft:block.iron_trapdoor.open player @s[scores={GunCooldown=2}] ~ ~ ~ 1 1.7 1

# Detect Bunker Items
execute unless score @s GunCooldown matches 1.. at @s run function tf_raycast:start_raycast_bunker

# Adjust Scores
scoreboard players remove @s[scores={GunCooldown=1..}] GunCooldown 1
scoreboard players reset @s[scores={GunCooldown=..0}] GunCooldown
scoreboard players reset @s[scores={UseCarrotStick=1..}] UseCarrotStick