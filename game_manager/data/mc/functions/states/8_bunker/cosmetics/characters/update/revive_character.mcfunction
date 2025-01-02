tellraw @a "revive character"

# Dolores
execute if score out Math matches 1 if score nukeSurvived DoloresStatus matches 0 run scoreboard players set characterRevived GameStatus 1
execute if score out Math matches 1 if score characterRevived GameStatus matches 1 run scoreboard players set alive DoloresStatus 1
# Mary Jane
execute if score out Math matches 2 if score nukeSurvived MaryStatus matches 0 run scoreboard players set characterRevived GameStatus 2
execute if score out Math matches 2 if score characterRevived GameStatus matches 2 run scoreboard players set alive MaryStatus 1
# Ted
execute if score out Math matches 3 if score nukeSurvived TedStatus matches 0 run scoreboard players set characterRevived GameStatus 3
execute if score out Math matches 3 if score characterRevived GameStatus matches 3 run scoreboard players set alive TedStatus 1
# Timmy
execute if score out Math matches 4 if score nukeSurvived TimmyStatus matches 0 run scoreboard players set characterRevived GameStatus 4
execute if score out Math matches 4 if score characterRevived GameStatus matches 4 run scoreboard players set alive TimmyStatus 1

# Keep In Range
scoreboard players add out Math 1
execute if score out Math matches 5.. run scoreboard players set out Math 1

### Ensure this only loops when valid, some characters died during nuke, to avoid a memory leak

# Cycle
execute unless score characterRevived GameStatus matches 1 run function mc:states/8_bunker/cosmetics/characters/update/revive_character