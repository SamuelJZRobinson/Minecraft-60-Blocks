# Playing
execute store result score playingAliveCount PlayerCount run team list Playing
execute if score playingAliveCount PlayerCount > PLAYER_LIMIT PlayerCount run team leave @r[team=Playing]
gamemode adventure @a[gamemode=!adventure,team=Playing]

# Lobby
team join Lobby @a[team=!Lobby,team=!Playing,team=!Enemy]
gamemode spectator @a[gamemode=!spectator,team=Lobby]