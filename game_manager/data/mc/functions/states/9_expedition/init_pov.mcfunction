# Reset Scores
scoreboard players reset * PlayerDeaths

# Set Music
scoreboard players set music GameStatus 2

# Gamerules
gamerule naturalRegeneration false

# # Enable Item Damage
# execute as @e[team=Items] run data modify entity @s Invulnerable set value 0b

# Effects
# execute as @p[team=Player] run function mc:states/9_expedition/place/player/effects/manage_effects

# Titles
# title @a times 10 20 10
# title @a title {"text":"Meanwhile","color":"gold"}
# title @a subtitle {"text":"Outside","color":"red"}

# Setup Expedition
scoreboard players set step ItemsExpedition 4
function mc:states/9_expedition/place/manage_expedition_pov