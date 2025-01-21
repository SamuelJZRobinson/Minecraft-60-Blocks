# Headshot
$execute positioned ~ ~0.25 ~ unless entity @s[dx=0] positioned ~ ~-0.2 ~ run damage @s $(headDamage)
# Bodyshot
$execute positioned ~ ~0.25 ~ if entity @s[dx=0] positioned ~ ~-1.9 ~ if entity @s[dx=0] run damage @s $(bodyDamage)
# Legshot
$execute positioned ~ ~-1.65 ~ unless entity @s[dx=0] run damage @s $(legDamage)