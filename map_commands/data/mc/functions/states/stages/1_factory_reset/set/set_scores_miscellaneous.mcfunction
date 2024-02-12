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
scoreboard players set playerCount Lobby 0
scoreboard players set PLAYER_LIMIT Lobby 1

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