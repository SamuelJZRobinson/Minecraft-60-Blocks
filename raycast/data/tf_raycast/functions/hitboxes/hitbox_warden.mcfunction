# Headshot
execute positioned ~ ~0.5 ~ unless entity @s[dx=0] positioned ~ ~-0.45 ~ run scoreboard players operation health MobHealth -= headDamage MobHealth

# Bodyshot
execute positioned ~ ~0.4 ~ if entity @s[dx=0] positioned ~ ~-2.4 ~ if entity @s[dx=0] run scoreboard players operation health MobHealth -= bodyDamage MobHealth

# Legshot
execute positioned ~ ~-1.9 ~ unless entity @s[dx=0] run scoreboard players operation health MobHealth -= legDamage MobHealth