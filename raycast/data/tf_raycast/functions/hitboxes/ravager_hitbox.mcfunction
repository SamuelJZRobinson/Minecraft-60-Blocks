# Detect Headshot
execute positioned ~ ~0.35 ~ unless entity @s[dx=0] positioned ~ ~-0.4 ~ run scoreboard players operation health MobHealth -= headDamage MobHealth
# Detect Bodyshot
execute positioned ~ ~0.35 ~ if entity @s[dx=0] positioned ~ ~-2.4 ~ if entity @s[dx=0] run scoreboard players operation health MobHealth -= bodyDamage MobHealth
# Detect Legshot
execute positioned ~ ~-2.05 ~ unless entity @s[dx=0] run scoreboard players operation health MobHealth -= legDamage MobHealth