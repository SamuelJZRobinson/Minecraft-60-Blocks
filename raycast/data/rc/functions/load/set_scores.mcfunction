# Click Detection
scoreboard objectives add UseCarrotStick minecraft.used:minecraft.carrot_on_a_stick {"bold":true,"color":"white","text":"Use Carrot Stick"}
scoreboard players reset * UseCarrotStick

# Gun Cooldown
scoreboard objectives add GunCooldownTick dummy {"bold":true,"color":"white","text":"Gun Cooldown Tick"}
scoreboard players reset * GunCooldownTick

# Raycast Range
scoreboard objectives add tf_rc dummy {"bold":true,"color":"white","text":"tf_rc"}

# Gun Damage Data
data remove storage minecraft:gundamage headDamage
data remove storage minecraft:gundamage bodyDamage
data remove storage minecraft:gundamage legDamage