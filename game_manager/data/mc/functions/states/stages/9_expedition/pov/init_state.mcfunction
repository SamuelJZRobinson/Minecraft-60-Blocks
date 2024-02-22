# Set Scores
scoreboard players set lockInventory GameStatus 2
scoreboard players set fakeBlindness GameStatus 2
scoreboard players set music GameStatus 2
scoreboard players reset * PlayerDeaths

# Gamerules
gamerule naturalRegeneration false

# Enable Item Damage
execute as @e[team=Item] run data modify entity @s Invulnerable set value 0b

# Effects
execute as @p[team=Playing] run function mc:states/stages/9_expedition/pov/player/effects/manage_effects

# Titles
title @a times 10 20 10
title @a title {"text":"Meanwhile","color":"gold"}
title @a subtitle {"text":"Outside","color":"red"}

# Placement
scoreboard players set stage ItemsExpedition 1
function mc:states/stages/9_expedition/pov/manage_pov

# Run Timer (Maybe Delay)
# function mc:utility/timer/timer_init