# Headshot
$execute positioned ~ ~0.35 ~ unless entity @s[dx=0] positioned ~ ~-0.3 ~ run damage @s $(headDamage)
# Bodyshot
$execute positioned ~ ~0.35 ~ if entity @s[dx=0] positioned ~ ~-2.3 ~ if entity @s[dx=0] run damage @s $(bodyDamage)
# Legshot
$execute positioned ~ ~-1.95 ~ unless entity @s[dx=0] run damage @s $(legDamage)