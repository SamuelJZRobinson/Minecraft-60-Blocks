# Disable Mob Loot
gamerule doMobLoot false

# Clear Entities
### CONSIDER HAVING GLOBAL bunkerEntity TAG TO DELETE ALL AT ONCE

# House (Temp)
function mc:states/1_factory_reset/clear/clear_locations_house

# Bunker (Temp)
function mc:states/1_factory_reset/clear/clear_locations_bunker

# Expedition
kill @e[Mobs]

# Enable Mob Loot
gamerule doMobLoot true