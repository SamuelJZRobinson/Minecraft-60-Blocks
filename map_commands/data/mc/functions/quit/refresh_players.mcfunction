# Hide Inventory And Item Left Titles
title @a actionbar ""
title @a clear

# Adjust Effects
effect clear @a
effect give @a minecraft:instant_health 1 10 true
effect give @a minecraft:saturation 1 10 true
# Empty Playing Team
execute unless score restartScavenge GameStatus matches 1 run team empty Playing
# Set Everyone To Adventure
execute unless score restartScavenge GameStatus matches 1 run gamemode adventure @a
# Empty All Inventories
clear @a
# Remove Experience
xp set @a 0 levels
# Set Lobby As Spawnpoint
spawnpoint @a 21 129 -2
# Hide Sidebar Objectives
scoreboard objectives setdisplay sidebar
# Enable Regneration
gamerule naturalRegeneration true
# Teleport Everyone To The Lobby
execute unless score restartScavenge GameStatus matches 1 run function mc:play/gamemodes/teleport_to_lobby