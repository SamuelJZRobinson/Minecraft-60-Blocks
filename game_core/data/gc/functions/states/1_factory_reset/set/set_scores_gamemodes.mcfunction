# Player
  # Player Deaths
  scoreboard objectives add PlayerDeaths deathCount {"bold":true,"color":"white","text":"Player Deaths"}
  scoreboard players reset * PlayerDeaths
  # Player Leave
  scoreboard objectives add PlayerLeaves minecraft.custom:minecraft.leave_game {"bold":true,"color":"white","text":"Player Leave"}

# Player Count
scoreboard objectives add PlayerCount dummy {"bold":true,"color":"white","text":"Player Count"}
scoreboard players set playerAliveCount PlayerCount 0
scoreboard players set lobbyAliveCount PlayerCount 0

# Timers
  # Countdown
  scoreboard objectives add TimerCountdown dummy {"bold":true,"color":"white","text":"Timer"}
  scoreboard players set seconds TimerCountdown 0
  scoreboard objectives add TimerCountdownSettings dummy {"bold":true,"color":"white","text":"Timer Countdown Settings"}
  scoreboard players set COUNTDOWN_SECONDS_START TimerCountdownSettings 5

# Atomic Drill
scoreboard objectives add AtomicDrill dummy {"bold":true,"color":"white","text":"Atomic Drill"}
# Item Count
scoreboard players set itemCount AtomicDrill 0
# Tasks
scoreboard players set task AtomicDrill 0
scoreboard players set step AtomicDrill 0
# Events
scoreboard players set expeditionDeath AtomicDrill 0
scoreboard players set event15Choice AtomicDrill 0
# Data
data remove storage minecraft:atomicdrill dialogue