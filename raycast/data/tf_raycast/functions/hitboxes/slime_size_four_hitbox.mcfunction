# Detect Headshot
execute positioned ~ ~1.00 ~ unless entity @s[dx=0] positioned ~ ~-0.95 ~ run scoreboard players operation health MobHealth -= headDamage MobHealth
# Detect Bodyshot
execute positioned ~ ~1.00 ~ if entity @s[dx=0] positioned ~ ~-1.00 ~ if entity @s[dx=0] run scoreboard players operation health MobHealth -= bodyDamage MobHealth