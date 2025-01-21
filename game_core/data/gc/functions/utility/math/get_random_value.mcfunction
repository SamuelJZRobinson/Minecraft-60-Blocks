# Notes
  # y must always be greater than x.

$execute store result score output Math run random roll $(x)..$(y)
execute store result storage minecraft:math output int 1 run scoreboard players get output Math
return run scoreboard players get output Math