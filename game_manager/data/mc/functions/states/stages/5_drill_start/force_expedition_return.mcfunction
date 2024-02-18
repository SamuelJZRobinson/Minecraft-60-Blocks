# Force Expedition Return
  # Play Bunker Door Sound
  function mc:sounds/bunker_door1

  # Injur The Character On Expedition
    # Dolores
    execute if score characterSent ChestMenuExplore matches 1 run scoreboard players set injured DoloresStatus 1
    execute if score characterSent ChestMenuExplore matches 1 run scoreboard players set tired DoloresStatus 1
    # Mary Jane
    execute if score characterSent ChestMenuExplore matches 2 run scoreboard players set injured MaryStatus 1
    execute if score characterSent ChestMenuExplore matches 2 run scoreboard players set tired MaryStatus 1
    # Ted
    execute if score characterSent ChestMenuExplore matches 4 run scoreboard players set injured TedStatus 1
    execute if score characterSent ChestMenuExplore matches 4 run scoreboard players set tired TedStatus 1
    # Timmy
    execute if score characterSent ChestMenuExplore matches 5 run scoreboard players set injured TimmyStatus 1
    execute if score characterSent ChestMenuExplore matches 5 run scoreboard players set tired TedStatus 1

  # Refresh Memory
  scoreboard players set characterSent ChestMenuExplore 0
  scoreboard players set locationVisited ChestMenuExplore 0

  # Give Medkit
  # function mc:utility/scavenge/check_item/set_temp_item
  # execute if score medkit ItemsBunker matches 0 run data modify storage minecraft:bundles bunkerItems.tag.Items append from storage minecraft:tempitem Items
  execute if score medkit ItemsBunker matches 0 run scoreboard players set medkit ItemsBunker 2
  data modify storage minecraft:checkitem checkId append value 12
  scoreboard players set stage CheckItems 9
  function mc:utility/scavenge/check_item/check_main_add
  function mc:utility/scavenge/check_item/set_bundle_details

  # Refresh Bunker Decorations
  schedule function mc:states/stages/8_bunker/decorations/manage_decorations 0.5s replace