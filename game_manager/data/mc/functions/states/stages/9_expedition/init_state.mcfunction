# Kill Empty Item Armor Stands
scoreboard players set lockInventory GameStatus 3
# Disable Natural Regeneration
gamerule naturalRegeneration false
# Effects
scoreboard players set fakeBlindness GameStatus 3
execute as @p[team=Playing] run function mc:utility/timer/player_effects
# Enable Item Damage
execute as @e[team=Item] run data modify entity @s Invulnerable set value 0b
# Titles
title @a times 10 20 10
title @a title {"text":"Meanwhile","color":"gold"}
title @a subtitle {"text":"Outside","color":"red"}