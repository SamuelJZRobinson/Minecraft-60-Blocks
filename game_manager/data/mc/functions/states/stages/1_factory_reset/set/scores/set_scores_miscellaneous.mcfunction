# SETTINGS
scoreboard objectives add Settings dummy {"bold":true,"color":"white","text":"Settings"}
scoreboard players set doTed Settings 0
scoreboard players set gamemode Settings 1
scoreboard players set difficulty Settings 1
scoreboard players set doPovExpedition Settings 0

# EXCEPTION
scoreboard objectives add Exception food {"bold":true,"color":"white","text":"Exception"}
scoreboard players set doException Settings 0

# Player Related
scoreboard objectives add PlayerHunger food {"bold":true,"color":"white","text":"Player Hunger"}
scoreboard players reset * PlayerHunger
scoreboard objectives add PlayerDeaths deathCount {"bold":true,"color":"white","text":"Player Deaths"}
scoreboard players reset * PlayerDeaths
scoreboard objectives add PlayerLeave minecraft.custom:minecraft.leave_game {"bold":true,"color":"white","text":"Player Leave"}
scoreboard objectives add PlayerWins dummy {"bold":true,"color":"white","text":"Player Wins"}

# Timers
  # Timers
  scoreboard objectives add Timer dummy {"bold":true,"color":"white","text":"Timer"}
  scoreboard objectives add Exploration dummy {"bold":true,"color":"white","text":"Exploration"}
  scoreboard objectives add Scavenge dummy {"bold":true,"color":"white","text":"Scavenge"}
  scoreboard objectives add Expedition dummy {"bold":true,"color":"white","text":"Expedition"}
  scoreboard players set alertInterval Timer 0
  scoreboard players set hornInterval Timer 8
  scoreboard players set clock Timer 0
  scoreboard players set COUNTDOWN_MIN Timer 5
  scoreboard players set seconds Timer 0
  scoreboard players set modulo Timer 0

# Lobby
scoreboard objectives add Lobby dummy {"bold":true,"color":"white","text":"Lobby"}
# scoreboard players set started GameStatus 0

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

# Character Status
scoreboard objectives add GameStatus dummy {"bold":true,"color":"white","text":"Game Status"}
scoreboard objectives add CheckItems dummy {"bold":true,"color":"white","text":"Check Items"}

scoreboard players set houseLoaded GameStatus 1