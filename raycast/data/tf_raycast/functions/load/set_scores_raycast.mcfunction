# GUN TYPE
scoreboard objectives add GunType dummy {"bold":true,"color":"white","text":"Gun Type"}
scoreboard players reset * GunType

# GUN COOLDOWN
scoreboard objectives add GunCooldownTick dummy {"bold":true,"color":"white","text":"Gun Cooldown Tick"}
scoreboard players reset * GunCooldownTick

# CLICK DETECTION
scoreboard objectives add UseCarrotStick minecraft.used:minecraft.carrot_on_a_stick {"bold":true,"color":"white","text":"Use Carrot Stick"}
scoreboard players reset * UseCarrotStick

# RANGE COUNT
scoreboard objectives add tf_rc dummy {"bold":true,"color":"white","text":"tf_rc"}

# MOB HEALTH
scoreboard objectives add MobHealth dummy {"bold":true,"color":"white","text":"Mob Health"}
scoreboard players set headDamage MobHealth 0
scoreboard players set bodyDamage MobHealth 0
scoreboard players set legDamage MobHealth 0
scoreboard players set health MobHealth 0