# Notes
  # Items are shared with mc:events/random_loadout/locations/spawn_items

# Set Scores
scoreboard players set soupCount ItemsHouse 7
scoreboard players set waterCount ItemsHouse 8

# Official Items
function mc:states/stages/4_setup/place/items/spawn/spawn_ammo
function mc:states/stages/4_setup/place/items/spawn/spawn_axe
function mc:states/stages/4_setup/place/items/spawn/spawn_boy_scout_handbook
function mc:states/stages/4_setup/place/items/spawn/spawn_bug_spray
function mc:states/stages/4_setup/place/items/spawn/spawn_cards
function mc:states/stages/4_setup/place/items/spawn/spawn_checkers
function mc:states/stages/4_setup/place/items/spawn/spawn_flashlight
function mc:states/stages/4_setup/place/items/spawn/spawn_gas_mask
function mc:states/stages/4_setup/place/items/spawn/spawn_gun
function mc:states/stages/4_setup/place/items/spawn/spawn_harmonica
function mc:states/stages/4_setup/place/items/spawn/spawn_map
function mc:states/stages/4_setup/place/items/spawn/spawn_medkit
function mc:states/stages/4_setup/place/items/spawn/spawn_padlock
function mc:states/stages/4_setup/place/items/spawn/spawn_radio
function mc:states/stages/4_setup/place/items/spawn/spawn_soups
function mc:states/stages/4_setup/place/items/spawn/spawn_suitcase
function mc:states/stages/4_setup/place/items/spawn/spawn_waters
# Custom Items
function mc:states/stages/4_setup/place/items/spawn/spawn_armour

# Custom Items
  # Body Armour
  summon minecraft:slime ~ ~ ~ {Silent:1b,Invulnerable:1b,Team:"Item",DeathTime:19,DeathLootTable:"lt_custom:entities/body_armour",PersistenceRequired:1b,NoAI:1b,Health:1f,Size:0,Tags:["scavengeItem","scavengeBodyArmour","threeSlots"],Passengers:[{id:"minecraft:armor_stand",Glowing:1b,Marker:1b,Invisible:1b,Tags:["scavengeItem","scavengeBodyArmour"],ArmorItems:[{},{},{},{id:"minecraft:saddle",Count:1b,tag:{CustomModelData:20}}]}],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:19999980,ShowParticles:0b}]}