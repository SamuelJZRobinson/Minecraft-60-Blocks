# Play Nuke Sound
function mc:sounds/nuke_explosion

# Copy Player Hotbar
execute as @p[team=Player] run function mc:states/7_scavenge_house/items/collect/get_hotbar_item_id

# Clear Player
function mc:states/7_scavenge_house/nuke/clear_players

# Detect Player At Bunker Door
execute if score bunkerSide GameStatus matches 0 store success score nukeSurvived GameStatus as @p[team=Player] if predicate mc:is_at_east_bunker
execute if score bunkerSide GameStatus matches 1 store success score nukeSurvived GameStatus as @p[team=Player] if predicate mc:is_at_west_bunker

# Clear Locations
function mc:states/1_factory_reset/clear/clear_locations

# Outcomes
execute if score gamemode Settings matches 1 run function mc:states/7_scavenge_house/nuke/give_drill_items
execute if score nukeSurvived GameStatus matches 1 run function mc:states/7_scavenge_house/nuke/nuke_safe
execute if score nukeSurvived GameStatus matches 0 run function mc:states/7_scavenge_house/nuke/nuke_dead