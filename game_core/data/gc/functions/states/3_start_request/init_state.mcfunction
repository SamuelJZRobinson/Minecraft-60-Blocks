# Notes
  # Cannot schedule initial start_request to allow @s selection so do it for manage_tests.

tellraw @a "state 3"

# Setup Teams
team join Player @s

# Run Tests
schedule function gc:states/3_start_request/tests/manage_tests 1t replace