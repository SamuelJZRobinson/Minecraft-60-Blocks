# Decrement Time
  # Second
  execute if score seconds TimerCountdown matches 0.. run scoreboard players remove seconds TimerCountdown 1

# Final Countdown
  # Scavenge House
  execute if score gameState GameStatus matches 7 if score seconds TimerCountdown <= COUNTDOWN_SECONDS_START TimerCountdownSettings if score seconds TimerCountdown matches 0.. run function gc:utility/timers/countdown/final_countdown
  # Expedition
  execute if score gameState GameStatus matches 9 if score seconds TimerCountdown <= COUNTDOWN_SECONDS_START TimerCountdownSettings if score seconds TimerCountdown matches 0.. run function gc:utility/timers/countdown/final_countdown

# Loop Tick
execute if score seconds TimerCountdown matches 1.. run schedule function gc:utility/timers/countdown/tick 1s replace

# Proceed
execute if score isGameStarted GameStatus matches 1 if score seconds TimerCountdown matches ..0 unless score gameState GameStatus matches 7 unless score gameState GameStatus matches 9 run schedule function gc:states/inc_state 1t replace
execute if score seconds TimerCountdown matches ..0 if score gameState GameStatus matches 7 run function gc:states/7_scavenge_house/nuke/manage_nuke
execute if score seconds TimerCountdown matches ..0 if score gameState GameStatus matches 9 run function gc:states/9_expedition/manage_end