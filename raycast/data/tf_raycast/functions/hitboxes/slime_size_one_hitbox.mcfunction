# Detect Headshot
execute positioned ~ ~0.4 ~ unless entity @s[dx=0] positioned ~ ~-0.35 ~ run scoreboard players operation health MobHealth -= HEAD_DAMAGE MobHealth
# Detect Bodyshot
execute positioned ~ ~0.4 ~ if entity @s[dx=0] positioned ~ ~-0.4 ~ if entity @s[dx=0] run scoreboard players operation health MobHealth -= BODY_DAMAGE MobHealth