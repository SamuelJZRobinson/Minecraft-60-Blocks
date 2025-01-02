# Decrement Time
  # Second
  execute if score seconds TimerCountdown matches 0.. run scoreboard players remove seconds TimerCountdown 1

# Final Countdown
execute if score seconds TimerCountdown <= COUNTDOWN_SECONDS_START TimerCountdownSettings if score seconds TimerCountdown matches 0.. run function mc:utility/timers/countdown/final_countdown

# Loop Tick
execute if score seconds TimerCountdown matches 1.. run schedule function mc:utility/timers/countdown/tick 1s replace

# Proceed
execute if score seconds TimerCountdown matches ..0 run schedule function mc:states/inc_state 1t replace