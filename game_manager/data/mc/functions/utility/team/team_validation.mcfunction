# Playing
execute store result score playingAliveCount PlayerCount run team list Playing
execute if score playingAliveCount PlayerCount > PLAYER_LIMIT PlayerCount run team leave @r[Mobsteam=Player]
gamemode adventure @a[name=!"BlackeyeI",gamemode=!adventure,Mobsteam=Player]

# Lobby
team join Lobby @a[team=!Lobby,team=!Playing,team=!Enemy]
execute if score started GameStatus matches 0 run gamemode adventure @a[name=!"BlackeyeI",gamemode=!adventure,team=Lobby]
execute if score started GameStatus matches 1 run gamemode spectator @a[name=!"BlackeyeI",gamemode=!spectator,team=Lobby]