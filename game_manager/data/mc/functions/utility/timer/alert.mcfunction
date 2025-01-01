# Ping Interval
execute if score alertInterval TimerCountdown matches 2.. run scoreboard players operation modulo TimerCountdown = seconds TimerCountdown
execute if score alertInterval TimerCountdown matches 2.. run scoreboard players operation modulo TimerCountdown %= alertInterval TimerCountdown
execute if score alertInterval TimerCountdown matches 2.. if score modulo TimerCountdown matches 0 run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 16 1
execute if score alertInterval TimerCountdown matches ..1 run playsound minecraft:block.note_block.hat record @s ~ ~ ~ 16 1 1

# Final Countdown
execute unless score state GameStatus matches 6 if score seconds TimerCountdown <= COUNTDOWN_SECONDS_START TimerCountdown run function mc:utility/timer/alert_countdown