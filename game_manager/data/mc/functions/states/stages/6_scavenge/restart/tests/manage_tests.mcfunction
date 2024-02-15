# Set Score
scoreboard players set testsFailed Exception 0

# Test List
function mc:states/stages/6_scavenge/restart/tests/test_is_started
execute if score testsFailed Exception matches 0 run schedule function mc:states/stages/6_scavenge/restart/tests/test_not_drill 1t replace
execute if score testsFailed Exception matches 0 run schedule function mc:states/stages/6_scavenge/restart/tests/test_is_scavenge 2t replace

# Approve
execute if score testsFailed Exception matches 0 run schedule function mc:states/stages/6_scavenge/restart/tests/approve 3t replace