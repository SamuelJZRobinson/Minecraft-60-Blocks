# Trigger Item
execute as @s[scores={UseCarrotStick=1..}] run function tf_raycast:trigger

# Play Reload Sound
execute if score @s GunType matches 1 run playsound minecraft:block.iron_trapdoor.open player @s[scores={GunCooldownTick=4}] ~ ~ ~ 1 1.2 1
execute if score @s GunType matches 1 run playsound minecraft:block.iron_trapdoor.open player @s[scores={GunCooldownTick=2}] ~ ~ ~ 1 1.7 1

# Start Raycast
execute if score state GameStatus matches 8 unless score @s GunCooldownTick matches 1.. at @s run function tf_raycast:bunker/start_raycast
# execute if score state GameStatus matches 9 at @s[scores={GunType = 1..}] run function tf_raycast:expedition/start_raycast
execute at @s[scores={GunType = 1..}] run function tf_raycast:expedition/start_raycast

# Adjust Scores
scoreboard players remove @s[scores={GunCooldownTick=1..}] GunCooldownTick 1
scoreboard players reset @s[scores={UseCarrotStick=1..}] UseCarrotStick
scoreboard players reset @s[scores={GunCooldownTick=..0}] GunCooldownTick