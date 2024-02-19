# Detect Headshot
execute positioned ~ ~0.1 ~ unless entity @s[dx=0] positioned ~ ~-0.05 ~ run scoreboard players operation health MobHealth -= headDamage MobHealth
# Detect Bodyshot
execute positioned ~ ~0.1 ~ if entity @s[dx=0] positioned ~ ~-1.3 ~ if entity @s[dx=0] run scoreboard players operation health MobHealth -= bodyDamage MobHealth
# Detect Legshot
execute positioned ~ ~-1.2 ~ unless entity @s[dx=0] run scoreboard players operation health MobHealth -= legDamage MobHealth