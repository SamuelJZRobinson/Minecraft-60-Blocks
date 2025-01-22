# Notes
  # Needs a single ID detection to destroy an item.

# Check Item ID
execute if score doDisplayOnly ItemsBundles matches 0 run function gc:states/8_bunker/items/process/check_item_remove_normal

# Append Bundles
  # Items
  execute if score doBundle ItemsBundles matches 1 if score itemId ItemsBundles matches 1..18 run function gc:states/8_bunker/items/process/append_bundle_remove_items
  # Characters
  execute if score doBundle ItemsBundles matches 1 if score itemId ItemsBundles matches 19..22 run function gc:states/8_bunker/items/process/append_bundle_remove_characters