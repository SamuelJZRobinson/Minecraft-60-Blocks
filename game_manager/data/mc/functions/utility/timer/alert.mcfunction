# Alert Interval
execute if score alertInterval Timer matches 2.. run scoreboard players operation modulo Timer = seconds Timer
execute if score alertInterval Timer matches 2.. run scoreboard players operation modulo Timer %= alertInterval Timer
execute if score alertInterval Timer matches 2.. if score modulo Timer matches 0 run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 16 1
execute if score alertInterval Timer matches ..1 run playsound minecraft:block.note_block.hat record @s ~ ~ ~ 16 1 1

# Final Countdown
execute unless score clock Timer matches 0..1 if score seconds Timer <= COUNTDOWN_MIN Timer run function mc:utility/timer/alert_countdown