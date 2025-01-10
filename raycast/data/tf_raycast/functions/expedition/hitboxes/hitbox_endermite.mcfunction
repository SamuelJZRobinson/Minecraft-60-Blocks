# Headshot
$execute positioned ~ ~0.15 ~ unless entity @s[dx=0] positioned ~ ~-0.1 ~ run damage @s $(headDamage)
# Bodyshot
$execute positioned ~ ~-1.15 ~ unless entity @s[dx=0] run damage @s $(bodyDamage)