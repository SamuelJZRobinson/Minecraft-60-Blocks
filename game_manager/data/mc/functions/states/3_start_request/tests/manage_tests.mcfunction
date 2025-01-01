# Set Score
scoreboard players set testsFailed Exception 0

# Test List
function mc:states/3_start_request/tests/test_wip_gamemode

# Approve
execute if score testsFailed Exception matches 0 run function mc:states/3_start_request/tests/approve