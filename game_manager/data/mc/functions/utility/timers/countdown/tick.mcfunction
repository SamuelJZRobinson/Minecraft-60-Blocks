# Decrement Time
  # Second
  execute if score seconds TimerCountdown matches 0.. run scoreboard players remove seconds TimerCountdown 1

# Final Countdown
  # Scavenge House
  execute if score state GameStatus matches 7 if score seconds TimerCountdown <= COUNTDOWN_SECONDS_START TimerCountdownSettings if score seconds TimerCountdown matches 0.. run function mc:utility/timers/countdown/final_countdown
  # Expedition
  execute if score state GameStatus matches 9 if score seconds TimerCountdown <= COUNTDOWN_SECONDS_START TimerCountdownSettings if score seconds TimerCountdown matches 0.. run function mc:utility/timers/countdown/final_countdown

# Loop Tick
execute if score seconds TimerCountdown matches 1.. run schedule function mc:utility/timers/countdown/tick 1s replace

# Proceed
execute if score seconds TimerCountdown matches ..0 if score state GameStatus matches 7 run function mc:states/7_scavenge_house/nuke/manage_nuke
execute if score started GameStatus matches 1 if score seconds TimerCountdown matches ..0 run schedule function mc:states/inc_state 1t replace