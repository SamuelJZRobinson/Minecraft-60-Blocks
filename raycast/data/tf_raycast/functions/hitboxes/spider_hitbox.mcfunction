# Detect Headshot
execute positioned ~ ~0.35 ~ unless entity @s[dx=0] positioned ~ ~-0.3 ~ run scoreboard players operation health MobHealth -= headDamage MobHealth
# Detect Bodyshot
execute positioned ~ ~0.35 ~ if entity @s[dx=0] positioned ~ ~-1.65 ~ if entity @s[dx=0] run scoreboard players operation health MobHealth -= bodyDamage MobHealth
# Detect Legshot
execute positioned ~ ~-1.3 ~ unless entity @s[dx=0] run scoreboard players operation health MobHealth -= legDamage MobHealth