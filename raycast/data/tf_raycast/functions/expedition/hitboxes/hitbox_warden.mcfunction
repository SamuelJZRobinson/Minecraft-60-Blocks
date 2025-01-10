# Headshot
$execute positioned ~ ~0.5 ~ unless entity @s[dx=0] positioned ~ ~-0.45 ~ run damage @s $(headDamage)
# Bodyshot
$execute positioned ~ ~0.4 ~ if entity @s[dx=0] positioned ~ ~-2.4 ~ if entity @s[dx=0] run damage @s $(bodyDamage)
# Legshot
$execute positioned ~ ~-1.9 ~ unless entity @s[dx=0] run damage @s $(legDamage)