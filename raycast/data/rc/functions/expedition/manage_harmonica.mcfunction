# Roll Dice
execute store result score output Math run random value 1..4

# Stun
execute if score output Math matches 1..3 run function rc:expedition/harmonica_success

# Fail
execute if score output Math matches 4 run function rc:expedition/harmonica_fail

# Refill Harmonica
schedule function rc:expedition/harmonica_refill 30s replace