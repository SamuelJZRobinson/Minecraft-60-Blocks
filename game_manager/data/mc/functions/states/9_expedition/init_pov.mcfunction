# Set Scores
scoreboard players set lockInventory GameStatus 2
scoreboard players set fakeBlindness GameStatus 2
scoreboard players set music GameStatus 2
scoreboard players reset * PlayerDeaths

# Enable Item Damage
execute as @e[team=Item] run data modify entity @s Invulnerable set value 0b

### Delay Until Ready
# Gamerules
# gamerule naturalRegeneration false

# Effects
# execute as @p[Mobsteam=Player] run function mc:states/9_expedition/place/player/effects/manage_effects

# Titles
# title @a times 10 20 10
# title @a title {"text":"Meanwhile","color":"gold"}
# title @a subtitle {"text":"Outside","color":"red"}

### This is ok
# Set Stage
scoreboard players set stage ItemsExpedition 1
schedule function mc:states/9_expedition/place/manage_placement 1t replace