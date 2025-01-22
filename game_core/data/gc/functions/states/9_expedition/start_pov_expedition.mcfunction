# Enable Item Damage
execute as @e[team=Items] run data modify entity @s Invulnerable set value 0b

# Effects
execute as @p[team=Player] run function gc:states/9_expedition/player/effects/manage_effects

# Setup Timer
scoreboard players set seconds TimerCountdown 180
scoreboard objectives setdisplay sidebar TimerCountdown
function gc:utility/timers/countdown/tick