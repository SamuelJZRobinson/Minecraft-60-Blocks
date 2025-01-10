# Headshot
$execute positioned ~ ~0.35 ~ unless entity @s[dx=0] positioned ~ ~-0.3 ~ run damage @s $(headDamage)
# Bodyshot
$execute positioned ~ ~0.35 ~ if entity @s[dx=0] positioned ~ ~-1.65 ~ if entity @s[dx=0] run damage @s $(bodyDamage)
# Legshot
$execute positioned ~ ~-1.3 ~ unless entity @s[dx=0] run damage @s $(legDamage)