# Open Medkit
execute as @s[scores={UseCarrotStick=1..},nbt={SelectedItem:{components:{"minecraft:custom_data":{medkit:1b}}}}] at @s run function gc:states/9_expedition/items/open/open_medkit
# Goto Bunker
execute as @s[scores={UseCarrotStick=1..},nbt={SelectedItem:{components:{"minecraft:custom_data":{gotoBunker:1b}}}}] at @s run function gc:states/9_expedition/manage_end

# Start Raycast
  # Buker
  execute if score gameState GameStatus matches 8 unless score @s GunCooldownTick matches 1.. at @s run function rc:bunker/start_raycast
  # Expedition
  execute if score gameState GameStatus matches 9 unless score @s GunCooldownTick matches 1.. at @s[scores={UseCarrotStick=1..}] run function rc:expedition/start_raycast

# Decrement Cooldown
scoreboard players remove @a[scores={GunCooldownTick=1..}] GunCooldownTick 1

# Reset Scores
scoreboard players reset @a[scores={GunCooldownTick=..0}] GunCooldownTick
scoreboard players reset @a[scores={UseCarrotStick=1..}] UseCarrotStick