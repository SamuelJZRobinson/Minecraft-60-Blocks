# Force Expedition Return
  # Play Bunker Door Sound
  function mc:sounds/bunker_door_1

  # Injur The Character On Expedition
    # Dolores
    execute if score characterSent MenuExpedition matches 1 run scoreboard players set isInjured DoloresStatus 1
    execute if score characterSent MenuExpedition matches 1 run scoreboard players set isTired DoloresStatus 1
    # Mary
    execute if score characterSent MenuExpedition matches 2 run scoreboard players set isInjured MaryStatus 1
    execute if score characterSent MenuExpedition matches 2 run scoreboard players set isTired MaryStatus 1
    # Ted
    execute if score characterSent MenuExpedition matches 4 run scoreboard players set isInjured TedStatus 1
    execute if score characterSent MenuExpedition matches 4 run scoreboard players set isTired TedStatus 1
    # Timmy
    execute if score characterSent MenuExpedition matches 5 run scoreboard players set isInjured TimmyStatus 1
    execute if score characterSent MenuExpedition matches 5 run scoreboard players set isTired TedStatus 1

  # Refresh Memory
  scoreboard players set characterSent MenuExpedition 0
  scoreboard players set mapVisited MenuExpedition 0

  # Give Medkit
  # function mc:states/8_bunker/items/process/set_temp_item
  # execute if score medkit ItemsBunker matches 0 run data modify storage minecraft:bundles bunkerItems.tag.Items append from storage minecraft:bundles itemTemplate
  execute if score medkit ItemsBunker matches 0 run scoreboard players set medkit ItemsBunker 2
  data modify storage minecraft:itemsprocess scavengeGainedItemIds append value 12
  scoreboard players set stage ItemsBundles 9
  function mc:states/8_bunker/items/process/bundles/check/check_main_add
  function mc:states/8_bunker/items/process/bundles/set_bundle_details

  # Refresh Bunker Decorations
  schedule function mc:states/8_bunker/manage_cosmetics 0.5s replace