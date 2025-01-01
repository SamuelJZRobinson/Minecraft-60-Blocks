# Create BunkerItems Bundle
data modify storage minecraft:bundles bunkerItems set from storage minecraft:bundletemplate Item

# Append Items
  # Soup
  scoreboard players set itemId CheckItems 15
  function mc:utility/scavenge/process/set_temp_item
  execute if score cans ItemsBunker matches ..7 run data modify storage minecraft:bundles bunkerItems.tag.Items append from storage minecraft:tempitem Items
  execute if score cans ItemsBunker matches ..7 run data modify storage minecraft:bundles bunkerItems.tag.Items append from storage minecraft:tempitem Items
  execute if score cans ItemsBunker matches ..7 run scoreboard players add cans ItemsBunker 8
  # Water
  scoreboard players set itemId CheckItems 17
  function mc:utility/scavenge/process/set_temp_item
  execute if score bottles ItemsBunker matches ..7 run data modify storage minecraft:bundles bunkerItems.tag.Items append from storage minecraft:tempitem Items
  execute if score bottles ItemsBunker matches ..7 run data modify storage minecraft:bundles bunkerItems.tag.Items append from storage minecraft:tempitem Items
  execute if score bottles ItemsBunker matches ..7 run scoreboard players add bottles ItemsBunker 8
  # Flashlight
  # scoreboard players set itemId CheckItems 7
  # function mc:utility/scavenge/process/set_temp_item
  # execute if score flashlight ItemsBunker matches ..7 run data modify storage minecraft:bundles bunkerItems.tag.Items append from storage minecraft:tempitem Items
  # execute if score bottles ItemsBunker matches ..7 run scoreboard players add bottles ItemsBunker 8