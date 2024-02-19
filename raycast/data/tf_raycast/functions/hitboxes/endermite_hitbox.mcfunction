# Detect Headshot
execute positioned ~ ~0.15 ~ unless entity @s[dx=0] positioned ~ ~-0.1 ~ run scoreboard players operation health MobHealth -= headDamage MobHealth
# Detect Bodyshot
execute positioned ~ ~-1.15 ~ unless entity @s[dx=0] run scoreboard players operation health MobHealth -= bodyDamage MobHealth