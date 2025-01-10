# Headshot
$execute positioned ~ ~0.1 ~ unless entity @s[dx=0] positioned ~ ~-0.05 ~ run damage @s $(headDamage)
# Bodyshot
$execute positioned ~ ~0.1 ~ if entity @s[dx=0] positioned ~ ~-1.3 ~ if entity @s[dx=0] run damage @s $(bodyDamage)
# Legshot
$execute positioned ~ ~-1.2 ~ unless entity @s[dx=0] run damage @s $(legDamage)