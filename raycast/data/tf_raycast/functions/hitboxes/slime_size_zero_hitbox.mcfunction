# Detect Headshot
execute positioned ~ ~0.4 ~ unless entity @s[dx=0] positioned ~ ~-0.35 ~ run scoreboard players operation health MobHealth -= headDamage MobHealth
# Detect Bodyshot
execute positioned ~ ~0.25 ~ if entity @s[dx=0] positioned ~ ~-0.25 ~ if entity @s[dx=0] run scoreboard players operation health MobHealth -= bodyDamage MobHealth