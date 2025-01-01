# Clone Bunker
clone 81 8 54 73 1 43 -4 53 25

# Disable Mob Loot
gamerule doMobLoot false

# Kill Non-Player Entities
kill @e[type=!player,type=!item_frame]
kill @e[type=item_frame,tag=prop]

# Enable Mob Loot
gamerule doMobLoot true