### Should probably change this to lobby team, they are also opposite of playing
# NOROOM
team add NoRoom "NoRoom"
team modify Lobby collisionRule never
team modify Lobby color red
team modify Lobby deathMessageVisibility never
team modify Lobby friendlyFire false
team modify Lobby nametagVisibility never
team modify Lobby seeFriendlyInvisibles true

# ITEM
team add Item "Item"
team modify Lobby collisionRule never
team modify Lobby color white
team modify Lobby deathMessageVisibility never
team modify Lobby friendlyFire false
team modify Lobby nametagVisibility always
team modify Lobby seeFriendlyInvisibles false

# PLAYING
team add Playing "Playing"
team modify Lobby collisionRule always
team modify Lobby color green
team modify Lobby deathMessageVisibility always
team modify Lobby friendlyFire false
team modify Lobby nametagVisibility always
team modify Lobby seeFriendlyInvisibles false

# ENEMY
team add Enemy "Enemy"
team modify Lobby collisionRule always
team modify Lobby color gold
team modify Lobby deathMessageVisibility never
team modify Lobby friendlyFire false
team modify Lobby nametagVisibility always
team modify Lobby seeFriendlyInvisibles true

# MARKER
team add Marker "Marker"
team modify Lobby collisionRule never
team modify Lobby color yellow
team modify Lobby deathMessageVisibility never
team modify Lobby friendlyFire false
team modify Lobby nametagVisibility always
team modify Lobby seeFriendlyInvisibles false