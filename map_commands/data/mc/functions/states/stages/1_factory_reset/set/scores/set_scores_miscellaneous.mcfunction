# SETTINGS
scoreboard players set initialCharacter Settings 0
scoreboard players set gameMode Settings 1
scoreboard players set difficulty Settings 1

# Player Related
scoreboard players reset * PlayerHunger
scoreboard players reset * PlayerDeaths

# Timers
scoreboard objectives add Timer dummy {"bold":true,"color":"white","text":"Timer"}
scoreboard players set alertInterval Timer 0
scoreboard players set hornInterval Timer 8
scoreboard players set clock Timer 0
scoreboard players set COUNTDOWN_MIN Timer 5
scoreboard players set seconds Timer 0
scoreboard players set modulo Timer 0

# Lobby
scoreboard objectives add Lobby dummy {"bold":true,"color":"white","text":"Lobby"}
scoreboard players set started Lobby 0

# PLAYER COUNT
scoreboard objectives add PlayerCount dummy {"bold":true,"color":"white","text":"Player Count"}
scoreboard players set PLAYER_LIMIT PlayerCount 1
scoreboard players set playingAliveCount PlayersCount 0
scoreboard players set lobbyAliveCount PlayerCount 0

# Math
  scoreboard objectives add em dummy {"bold":true,"color":"white","text":"em"}
  # Settings
  scoreboard players set mode em 1
  scoreboard players set dynamicDifficulty em 0
  scoreboard players set memory em 0
  scoreboard players set notRandom em 0
  scoreboard players set startOne em 0
  # Input And Output
  scoreboard players set math_in1 em 0
  scoreboard players set math_in2 em 0
  scoreboard players set math_out em 0