# Notes
  # Cannot schedule initial start_request to allow @s selection.

# Setup Players
team join Playing @s
scoreboard players set @s ChestMenuMain 0
clear @a

tellraw @a "state 3"

# Run Tests
function mc:states/stages/3_start_request/tests/manage_tests