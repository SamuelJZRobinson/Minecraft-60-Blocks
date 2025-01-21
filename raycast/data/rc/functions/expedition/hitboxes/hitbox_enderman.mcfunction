# Headshot
$execute positioned ~ ~0.4 ~ unless entity @s[dx=0] positioned ~ ~-0.35 ~ run damage @s $(headDamage)
# Bodyshot
$execute positioned ~ ~0.4 ~ if entity @s[dx=0] positioned ~ ~-3.1 ~ if entity @s[dx=0] run damage @s $(bodyDamage)
# Legshot
$execute positioned ~ ~-2.7 ~ unless entity @s[dx=0] run damage @s $(legDamage)