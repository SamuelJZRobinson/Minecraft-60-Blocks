# SETTINGS
scoreboard objectives add Settings dummy {"bold":true,"color":"white","text":"Settings"}
scoreboard players set doTed Settings 0
scoreboard players set gamemode Settings 1
scoreboard players set difficulty Settings 1
scoreboard players set doPovExpedition Settings 0

# EXCEPTION
scoreboard objectives add Exception food {"bold":true,"color":"white","text":"Exception"}
scoreboard players set doException Exception 0

# PLAYER
  # PLAYER HUNGER
  scoreboard objectives add PlayerHunger food {"bold":true,"color":"white","text":"Player Hunger"}
  scoreboard players reset * PlayerHunger
  # PLAYER DEATHS
  scoreboard objectives add PlayerDeaths deathCount {"bold":true,"color":"white","text":"Player Deaths"}
  scoreboard players reset * PlayerDeaths
  # PLAYER LEAVE
  scoreboard objectives add PlayerLeave minecraft.custom:minecraft.leave_game {"bold":true,"color":"white","text":"Player Leave"}

# TIMERS
  # ENGINE
  scoreboard objectives add Timer dummy {"bold":true,"color":"white","text":"Timer"}
  # Alert
  scoreboard players set alertInterval Timer 0
  scoreboard players set hornInterval Timer 8
  # Time
  scoreboard players set seconds Timer 0
  scoreboard players set COUNTDOWN_MIN Timer 5
  scoreboard players set modulo Timer 0

  # EXPLORATION
  scoreboard objectives add Exploration dummy {"bold":true,"color":"white","text":"Exploration"}
  scoreboard players set seconds Exploration 0

  # SCAVENGE
  scoreboard objectives add Scavenge dummy {"bold":true,"color":"white","text":"Scavenge"}
  scoreboard players set seconds Scavenge 0

  # EXPEDITION
  scoreboard objectives add Expedition dummy {"bold":true,"color":"white","text":"Expedition"}
  scoreboard players set seconds Expedition 0

# PLAYER COUNT
scoreboard objectives add PlayerCount dummy {"bold":true,"color":"white","text":"Player Count"}
scoreboard players set PLAYER_LIMIT PlayerCount 1
scoreboard players set playingAliveCount PlayersCount 0
scoreboard players set lobbyAliveCount PlayerCount 0