# Clear Stuff
clear @a
xp set @a 0 levels
advancement revoke @a everything

# Titles
title @a clear
title @a actionbar ""

# Teams
team join Lobby

# Scoreboards
scoreboard objectives setdisplay sidebar

# Heal
effect clear @a
effect give @a minecraft:instant_health 1 10 true
effect give @a minecraft:saturation 1 10 true
gamerule naturalRegeneration true

# Goto Lobby
function mc:utility/tp/tp_lobby