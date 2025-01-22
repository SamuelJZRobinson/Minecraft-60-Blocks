# Force Expedition Return
  # Play Bunker Door Sound
  function gc:sounds/bunker_door

  # Injur The Character On Expedition
    # Ted
    execute if score characterSent MenuExpedition matches 1 run scoreboard players set isInjured TedStatus 1
    execute if score characterSent MenuExpedition matches 1 run scoreboard players set isTired TedStatus 1
    # Dolores
    execute if score characterSent MenuExpedition matches 2 run scoreboard players set isInjured DoloresStatus 1
    execute if score characterSent MenuExpedition matches 2 run scoreboard players set isTired DoloresStatus 1
    # Mary
    execute if score characterSent MenuExpedition matches 3 run scoreboard players set isInjured MaryStatus 1
    execute if score characterSent MenuExpedition matches 3 run scoreboard players set isTired MaryStatus 1
    # Timmy
    execute if score characterSent MenuExpedition matches 4 run scoreboard players set isInjured TimmyStatus 1
    execute if score characterSent MenuExpedition matches 4 run scoreboard players set isTired TedStatus 1

  # Reset Scores
  scoreboard players set characterSent MenuExpedition 0
  scoreboard players set mapVisited MenuExpedition 0

  # Refresh Bunker Decorations
    # Kill Entities
    function gc:states/1_factory_reset/clear/clear_locations
    # Characters
    function gc:states/8_bunker/characters/manage_characters
    # Bundles
    function gc:states/8_bunker/items/process/manage_bundles
    # Items
    function gc:states/8_bunker/items/manage_items