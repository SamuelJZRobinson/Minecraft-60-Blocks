# Player Related
  # Set Adventure Mode
  # execute if score timer Clock matches 0 run gamemode adventure @a

# Create Objectives
  # Gamemodes
  scoreboard objectives add AtomicDrill dummy {"bold":true,"color":"white","text":"Atomic Drill"}
  scoreboard objectives add Lobby dummy {"bold":true,"color":"white","text":"Lobby"}

  # Salvage Crate
  scoreboard objectives add OpenShulkerBox minecraft.custom:minecraft.open_shulker_box {"bold":true,"color":"white","text":"Open Shulker Box"}

  # Character Status
  scoreboard objectives add DoloresStatus dummy {"bold":true,"color":"white","text":"Dolores Status"}
  scoreboard objectives add MaryStatus dummy {"bold":true,"color":"white","text":"Mary Status"}
  scoreboard objectives add TimmyStatus dummy {"bold":true,"color":"white","text":"Timmy Status"}
  scoreboard objectives add TedStatus dummy {"bold":true,"color":"white","text":"Ted Status"}
  scoreboard objectives add StatusLevels dummy {"bold":true,"color":"white","text":"Status Levels"}
  scoreboard objectives add StatusOdds dummy {"bold":true,"color":"white","text":"Status Odds"}
  scoreboard objectives add GameStatus dummy {"bold":true,"color":"white","text":"Game Status"}
  scoreboard objectives add CheckItems dummy {"bold":true,"color":"white","text":"Check Items"}

  # Timers
  scoreboard objectives add Exploration dummy {"bold":true,"color":"white","text":"Exploration"}
  scoreboard objectives add Scavenge dummy {"bold":true,"color":"white","text":"Scavenge"}
  scoreboard objectives add Expedition dummy {"bold":true,"color":"white","text":"Expedition"}

  # Player Related
  scoreboard objectives add ExpeditionOdds dummy {"bold":true,"color":"white","text":"Expedition Odds"}
  scoreboard objectives add MobHealth dummy {"bold":true,"color":"white","text":"Mob Health"}
  scoreboard objectives add tf_rc dummy {"bold":true,"color":"white","text":"tf_rc"}
  scoreboard objectives add GunCooldown dummy {"bold":true,"color":"white","text":"Gun Cooldown"}
  scoreboard objectives add GunType dummy {"bold":true,"color":"white","text":"Gun Type"}
  scoreboard objectives add HighScore dummy {"bold":true,"color":"white","text":"High Score"}
  scoreboard objectives add PlayerHunger food {"bold":true,"color":"white","text":"Player Hunger"}
  scoreboard objectives add PlayerLeave minecraft.custom:minecraft.leave_game {"bold":true,"color":"white","text":"Player Leave"}
  scoreboard objectives add PlayerWins dummy {"bold":true,"color":"white","text":"Player Wins"}
  scoreboard objectives add PlayerDeaths deathCount {"bold":true,"color":"white","text":"Player Deaths"}
  scoreboard objectives add UseCarrotStick minecraft.used:minecraft.carrot_on_a_stick {"bold":true,"color":"white","text":"Use Carrot Stick"}

  # Items
  scoreboard objectives add ItemsBunker dummy {"bold":true,"color":"white","text":"Items Bunker"}
  scoreboard objectives add ItemsExpedition dummy {"bold":true,"color":"white","text":"Items Expedition"}
  scoreboard objectives add MobsExpedition dummy {"bold":true,"color":"white","text":"Mobs Expedition"}
  scoreboard objectives add ItemsHouse dummy {"bold":true,"color":"white","text":"Items House"}
  scoreboard objectives add ItemsHouseHigh dummy {"bold":true,"color":"white","text":"Items House High"}
  scoreboard objectives add RealCount dummy {"bold":true,"color":"white","text":"Real Count"}

# Remove Advancements
advancement revoke @a everything

# Merge Lobby Signs
# function mc:play/lobby/merge_signs

# Status
tellraw @a [{"text":"Map commands loaded","color":"white","bold":false}]