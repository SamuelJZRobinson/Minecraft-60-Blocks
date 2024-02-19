# Detect Headshot
execute positioned ~ ~0.25 ~ unless entity @s[dx=0] positioned ~ ~-0.2 ~ run scoreboard players operation health MobHealth -= headDamage MobHealth
# Detect Bodyshot
execute positioned ~ ~0.25 ~ if entity @s[dx=0] positioned ~ ~-1.9 ~ if entity @s[dx=0] run scoreboard players operation health MobHealth -= bodyDamage MobHealth
# Detect Legshot
execute positioned ~ ~-1.65 ~ unless entity @s[dx=0] run scoreboard players operation health MobHealth -= legDamage MobHealth