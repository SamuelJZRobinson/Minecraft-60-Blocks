# Detect Headshot
execute positioned ~ ~0.35 ~ unless entity @s[dx=0] positioned ~ ~-0.3 ~ run scoreboard players operation health MobHealth -= HEAD_DAMAGE MobHealth
# Detect Bodyshot
execute positioned ~ ~0.35 ~ if entity @s[dx=0] positioned ~ ~-2.3 ~ if entity @s[dx=0] run scoreboard players operation health MobHealth -= BODY_DAMAGE MobHealth
# Detect Legshot
execute positioned ~ ~-1.95 ~ unless entity @s[dx=0] run scoreboard players operation health MobHealth -= LEG_DAMAGE MobHealth