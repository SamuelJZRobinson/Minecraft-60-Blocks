# Player
  # Lobby
  team add Lobby "Lobby"
  team modify Lobby collisionRule never
  team modify Lobby color gray
  team modify Lobby deathMessageVisibility never
  team modify Lobby friendlyFire false
  team modify Lobby nametagVisibility always
  team modify Lobby seeFriendlyInvisibles true
  team join Lobby @a
  # Player
  team add Player "Player"
  team modify Player collisionRule always
  team modify Player color green
  team modify Player deathMessageVisibility always
  team modify Player friendlyFire false
  team modify Player nametagVisibility always
  team modify Player seeFriendlyInvisibles false

# Item
  # Item Unassigned
  team add Item "ItemUnassigned"
  team modify Item collisionRule never
  team modify Item color white
  team modify Item deathMessageVisibility never
  team modify Item friendlyFire false
  team modify Item nametagVisibility always
  team modify Item seeFriendlyInvisibles false
  # Item
  team add Item "Item"
  team modify Item collisionRule never
  team modify Item color white
  team modify Item deathMessageVisibility never
  team modify Item friendlyFire false
  team modify Item nametagVisibility always
  team modify Item seeFriendlyInvisibles false
  # Item NoRoom
  team add NoRoom "NoRoom"
  team modify NoRoom collisionRule never
  team modify NoRoom color red
  team modify NoRoom deathMessageVisibility never
  team modify NoRoom friendlyFire false
  team modify NoRoom nametagVisibility always
  team modify NoRoom seeFriendlyInvisibles true

# Markers
team add Marker "Marker"
team modify Marker collisionRule never
team modify Marker color yellow
team modify Marker deathMessageVisibility never
team modify Marker friendlyFire false
team modify Marker nametagVisibility always
team modify Marker seeFriendlyInvisibles false

# Mobs
team add Mobs "Mobs"
team modify Mobs collisionRule always
team modify Mobs color black
team modify Mobs deathMessageVisibility never
team modify Mobs friendlyFire false
team modify Mobs nametagVisibility always
team modify Mobs seeFriendlyInvisibles true