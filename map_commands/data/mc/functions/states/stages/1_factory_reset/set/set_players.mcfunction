# Inventory
clear @a
xp set @a 0 levels

# Teams
execute unless score restartScavenge GameStatus matches 1 run team empty Playing

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

# Gamemode
execute unless score restartScavenge GameStatus matches 1 run gamemode adventure @a

# Goto Lobby
spawnpoint @a 21 129 -2
execute unless score restartScavenge GameStatus matches 1 run function mc:play/gamemodes/teleport_to_lobby