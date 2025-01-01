# Set Score
scoreboard players set testsFailed Exception 0

# Test List
function mc:states/6_scavenge_house/restart/tests/test_is_started
execute if score testsFailed Exception matches 0 run function mc:states/6_scavenge_house/restart/tests/test_is_scavenge
execute if score testsFailed Exception matches 0 run function mc:states/6_scavenge_house/restart/tests/test_not_drill

# Approve
execute if score testsFailed Exception matches 0 run function mc:states/6_scavenge_house/restart/tests/approve