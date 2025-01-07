# Trigger Item
execute as @s[scores={UseCarrotStick=1..}] run function tf_raycast:trigger

# Start Raycast
  # Buker
  execute if score state GameStatus matches 8 unless score @s GunCooldownTick matches 1.. at @s run function tf_raycast:bunker/start_raycast
  # Expedition
  # execute if score state GameStatus matches 9 at @s[scores={GunType = 1..}] run function tf_raycast:expedition/start_raycast
  execute at @s[scores={GunType=1..,UseCarrotStick=1..}] unless score @s GunCooldownTick matches 1.. run function tf_raycast:expedition/start_raycast

# Play Reload Sound
execute as @s[scores={GunType=1,GunCooldownTick=6}] run playsound minecraft:block.iron_trapdoor.open player @s ~ ~ ~ 1 1.2 1
execute as @s[scores={GunType=1,GunCooldownTick=2}] run playsound minecraft:block.iron_trapdoor.open player @s ~ ~ ~ 1 1.7 1

# Adjust Scores
scoreboard players remove @a[scores={GunCooldownTick=1..}] GunCooldownTick 1
scoreboard players reset @a[scores={GunCooldownTick=..0}] GunCooldownTick
scoreboard players reset @a[scores={UseCarrotStick=1..}] UseCarrotStick