# Create BunkerItems Bundle
data modify storage minecraft:bundles bunkerItems set from storage minecraft:bundletemplate Item

# Append Items
  # Soup
  scoreboard players set itemId ItemsBundles 15
  function mc:states/8_bunker/items/process/set_temp_item
  execute if score soups ItemsBunker matches ..7 run data modify storage minecraft:bundles bunkerItems.tag.Items append from storage minecraft:tempitem Items
  execute if score soups ItemsBunker matches ..7 run data modify storage minecraft:bundles bunkerItems.tag.Items append from storage minecraft:tempitem Items
  execute if score soups ItemsBunker matches ..7 run scoreboard players add soups ItemsBunker 8
  # Water
  scoreboard players set itemId ItemsBundles 17
  function mc:states/8_bunker/items/process/set_temp_item
  execute if score waters ItemsBunker matches ..7 run data modify storage minecraft:bundles bunkerItems.tag.Items append from storage minecraft:tempitem Items
  execute if score waters ItemsBunker matches ..7 run data modify storage minecraft:bundles bunkerItems.tag.Items append from storage minecraft:tempitem Items
  execute if score waters ItemsBunker matches ..7 run scoreboard players add waters ItemsBunker 8
  # Flashlight
  # scoreboard players set itemId ItemsBundles 7
  # function mc:states/8_bunker/items/process/set_temp_item
  # execute if score flashlight ItemsBunker matches ..7 run data modify storage minecraft:bundles bunkerItems.tag.Items append from storage minecraft:tempitem Items
  # execute if score waters ItemsBunker matches ..7 run scoreboard players add waters ItemsBunker 8