# Headshot
execute positioned ~ ~0.35 ~ unless entity @s[dx=0] positioned ~ ~-0.3 ~ run scoreboard players operation health MobHealth -= headDamage MobHealth
# Bodyshot
execute positioned ~ ~0.35 ~ if entity @s[dx=0] positioned ~ ~-2.3 ~ if entity @s[dx=0] run scoreboard players operation health MobHealth -= bodyDamage MobHealth
# Legshot
execute positioned ~ ~-1.95 ~ unless entity @s[dx=0] run scoreboard players operation health MobHealth -= legDamage MobHealth