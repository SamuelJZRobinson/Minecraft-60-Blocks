# Count Players
execute store result score playerCount Lobby run team list Playing
# Perform Action
execute if score playerCount Lobby > PLAYER_LIMIT Lobby run team leave @r[team=Playing]
execute if score playerCount Lobby matches 0 run tellraw @a {"text":"Force restart due to no players!","color":"red"}
execute if score playerCount Lobby matches 0 run function mc:quit/manage_refresh
# Make Non-Players Spectators
gamemode spectator @a[gamemode=!spectator,team=!Playing]