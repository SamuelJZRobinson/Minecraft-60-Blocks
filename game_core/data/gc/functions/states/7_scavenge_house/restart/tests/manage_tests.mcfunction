# Set Score
scoreboard players set testsFailed Exception 0

# Test List
execute if score testsFailed Exception matches 0 run function gc:states/7_scavenge_house/restart/tests/test_correct_state
execute if score testsFailed Exception matches 0 run function gc:states/7_scavenge_house/restart/tests/test_not_drill

# Approve
execute if score testsFailed Exception matches 0 run function gc:states/7_scavenge_house/restart/tests/approve