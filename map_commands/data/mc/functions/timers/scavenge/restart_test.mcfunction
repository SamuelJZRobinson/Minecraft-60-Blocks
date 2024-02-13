# Notes
  # Players should not be allowed to restart a scavenge during an atomic drill to prevent errors

execute if score gameMode Lobby matches 2..3 if score clock Timer matches 1..2 run function mc:timers/scavenge/restart
execute unless score gameMode Lobby matches 1 unless score clock Timer matches 1..2 if score clock Timer matches 0..4 run tellraw @s {"text":"Cannot restart scavenge.","color":"red"}
execute unless score gameMode Lobby matches 1 unless score clock Timer matches 1..2 if score clock Timer matches 0..4 run function mc:sounds/error
execute if score gameMode Lobby matches 1 run tellraw @s {"text":"Cannot restart scavenge.","color":"red"}
execute if score gameMode Lobby matches 1 run function mc:sounds/error