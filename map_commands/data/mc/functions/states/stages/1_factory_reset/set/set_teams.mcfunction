### Should probably change this to lobby team, they are also opposite of playing
# LOBBY
team add Lobby "Lobby"
team modify Lobby collisionRule never
team modify Lobby color gray
team modify Lobby deathMessageVisibility never
team modify Lobby friendlyFire false
team modify Lobby nametagVisibility never
team modify Lobby seeFriendlyInvisibles true

# PLAYING
team add Playing "Playing"
team modify Playing collisionRule always
team modify Playing color green
team modify Playing deathMessageVisibility always
team modify Playing friendlyFire false
team modify Playing nametagVisibility always
team modify Playing seeFriendlyInvisibles false

# ITEM
team add Item "Item"
team modify Item collisionRule never
team modify Item color white
team modify Item deathMessageVisibility never
team modify Item friendlyFire false
team modify Item nametagVisibility always
team modify Item seeFriendlyInvisibles false

# NOROOM
team add NoRoom "NoRoom"
team modify NoRoom collisionRule never
team modify NoRoom color red
team modify NoRoom deathMessageVisibility never
team modify NoRoom friendlyFire false
team modify NoRoom nametagVisibility never
team modify NoRoom seeFriendlyInvisibles true

# MARKER
team add Marker "Marker"
team modify Marker collisionRule never
team modify Marker color yellow
team modify Marker deathMessageVisibility never
team modify Marker friendlyFire false
team modify Marker nametagVisibility always
team modify Marker seeFriendlyInvisibles false

# ENEMY
team add Enemy "Enemy"
team modify Enemy collisionRule always
team modify Enemy color black
team modify Enemy deathMessageVisibility never
team modify Enemy friendlyFire false
team modify Enemy nametagVisibility always
team modify Enemy seeFriendlyInvisibles true