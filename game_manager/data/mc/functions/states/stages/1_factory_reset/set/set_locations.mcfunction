# Disable Mob Loot
gamerule doMobLoot false

# Clear Entities
### CONSIDER HAVING GLOBAL bunkerEntity TAG TO DELETE ALL AT ONCE
# Bunker (Temp)
kill @e[tag=bunkerItem]
kill @e[tag=bunkerStatus]
kill @e[tag=bunkerMarker]
kill @e[tag=bunkerHitbox]
kill @e[team=Enemy]
# House (Temp)
kill @e[tag=houseProp]
kill @e[tag=houseNPC]
kill @e[team=Marker]
kill @e[team=NoRoom]
kill @e[tag=scavengeItem]
kill @e[type=minecraft:marker]
kill @e[type=minecraft:item]

# Bunker
clone 81 8 54 73 1 44 -4 53 26

# Enable Mob Loot
gamerule doMobLoot true

# Display Lobby Gear
execute unless score restartScavenge GameStatus matches 1 unless entity @e[type=armor_stand,tag=lobbyAmmo] run function mc:states/stages/1_factory_reset/set/set_locations_lobby