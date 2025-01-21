# Play Nuke Sound
function gc:sounds/nuke_explosion

# Copy Player Hotbar
execute as @p[team=Player] run function gc:states/7_scavenge_house/items/collect/get_hotbar_item_id

# Clear Player
function gc:states/7_scavenge_house/nuke/clear_players

# Clear Locations
function gc:states/1_factory_reset/clear/clear_locations

# Outcomes
execute if score gamemode Settings matches 1 run function gc:states/7_scavenge_house/nuke/give_drill_items
execute if score bunkerSide GameStatus matches 0 as @p[team=Player] if predicate gc:is_at_east_bunker run function gc:states/7_scavenge_house/nuke/nuke_safe
execute if score bunkerSide GameStatus matches 0 as @p[team=Player] unless predicate gc:is_at_east_bunker run function gc:states/7_scavenge_house/nuke/nuke_dead
execute if score bunkerSide GameStatus matches 1 as @p[team=Player] if predicate gc:is_at_west_bunker run function gc:states/7_scavenge_house/nuke/nuke_safe
execute if score bunkerSide GameStatus matches 1 as @p[team=Player] unless predicate gc:is_at_west_bunker run function gc:states/7_scavenge_house/nuke/nuke_dead