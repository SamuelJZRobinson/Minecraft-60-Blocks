function mc:status/scavenge/count_bunker_items
schedule function mc:states/stages/8_bunker/decorations/characters/manage_characters 1t replace
schedule function mc:states/stages/8_bunker/decorations/items/manage_items 8t replace
# schedule function tf_raycast:set_name_visibility 10t replace

schedule function mc:events/daily/remove_blindness 2.5s replace