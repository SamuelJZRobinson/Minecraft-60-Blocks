# Open Medkit
execute as @s[scores={UseCarrotStick=1..},nbt={SelectedItem:{tag:{medkit:1b}}}] at @s run function mc:states/9_expedition/place/items/open/open_medkit

# Start Raycast
  # Buker
  execute if score gameState GameStatus matches 8 unless score @s GunCooldownTick matches 1.. at @s run function tf_raycast:bunker/start_raycast
  # Expedition
  execute if score gameState GameStatus matches 9 unless score @s GunCooldownTick matches 1.. at @s[scores={UseCarrotStick=1..}] run function tf_raycast:expedition/start_raycast

# Decrement Cooldown
scoreboard players remove @a[scores={GunCooldownTick=1..}] GunCooldownTick 1

# Reset Scores
scoreboard players reset @a[scores={GunCooldownTick=..0}] GunCooldownTick
scoreboard players reset @a[scores={UseCarrotStick=1..}] UseCarrotStick