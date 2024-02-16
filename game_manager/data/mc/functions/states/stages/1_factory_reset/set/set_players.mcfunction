# Inventory
clear @a
xp set @a 0 levels

# Advancements
advancement revoke @a everything

# Teams
team empty Playing

# Titles
title @a clear
title @a actionbar ""

# Scoreboards
scoreboard objectives setdisplay sidebar

# Heal
effect clear @a
effect give @a minecraft:instant_health 1 10 true
effect give @a minecraft:saturation 1 10 true
gamerule naturalRegeneration true

# Goto Lobby
spawnpoint @a 21 129 -2
teleport @a 21.50 130.00 -2.50 0 0