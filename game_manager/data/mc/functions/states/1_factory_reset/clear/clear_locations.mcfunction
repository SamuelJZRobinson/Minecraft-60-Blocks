# Kill Non-Player Characters
gamerule doMobLoot false
kill @e[type=!player,type=!item_frame]
kill @e[type=item_frame,tag=deleteItemFrame]
gamerule doMobLoot true