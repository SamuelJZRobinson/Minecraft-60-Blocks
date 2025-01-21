# Particle
function gc:utility/particles/expedition/medkit_heal

# Sound
function gc:sounds/open_box

# Clear Item
item replace entity @s weapon.mainhand with minecraft:air

# Give Effects
effect give @s instant_health
effect give @s regeneration 45 0 true

# Clear Effects
effect clear @s poison
effect clear @s slowness