# Items
  # West
  setblock ~1 ~-1 ~ spruce_wall_sign[facing=east]{front_text:{color:"light_blue",has_glowing_text:1b,messages:['{"text":"Gun","bold":true}','{"text":"2 Slots","italic":true}','{"text":"-Ranged defence"}','{"text":""}']}} destroy
  setblock ~1 ~-1 ~1 spruce_wall_sign[facing=east]{front_text:{color:"light_blue",has_glowing_text:1b,messages:['{"text":"Gas Mask","bold":true}','{"text":"1 Slot","italic":true}','{"text":"- Avoid radiation"}','{"text":"sickness"}']}} destroy
  setblock ~1 ~-1 ~2 spruce_wall_sign[facing=east]{front_text:{color:"light_blue",has_glowing_text:1b,messages:['{"text":"Flashlight","bold":true}','{"text":"1 Slot","italic":true}','{"text":"- Brighten areas"}','{"text":"- Aids rescue"}']}} destroy
  setblock ~1 ~-1 ~3 spruce_wall_sign[facing=east]{front_text:{color:"light_blue",has_glowing_text:1b,messages:['{"text":"Checkers","bold":true}','{"text":"1 Slot","italic":true}','{"text":"- Aids sanity"}','{"text":"- Aids rescue"}']}} destroy
  setblock ~1 ~-1 ~4 spruce_wall_sign[facing=east]{front_text:{color:"light_blue",has_glowing_text:1b,messages:['{"text":"Cards","bold":true}','{"text":"1 Slot","italic":true}','{"text":"- Aids sanity"}','{"text":"- Aids rescue"}']}} destroy
  setblock ~1 ~-1 ~5 spruce_wall_sign[facing=east]{front_text:{color:"light_blue",has_glowing_text:1b,messages:['{"text":"Bug Spray","bold":true}','{"text":"1 Slot","italic":true}','{"text":"- Kills insects"}','{"text":"- Crafts medkit"}']}} destroy
  setblock ~1 ~-1 ~6 spruce_wall_sign[facing=east]{front_text:{color:"light_blue",has_glowing_text:1b,messages:['{"text":"Scout Book","bold":true}','{"text":"1 Slot","italic":true}','{"text":"- Survival tips"}','{"text":"- Repairs tools"}']}} destroy
  setblock ~1 ~-1 ~7 spruce_wall_sign[facing=east]{front_text:{color:"light_blue",has_glowing_text:1b,messages:['{"text":"Axe","bold":true}','{"text":"2 Slots","italic":true}','{"text":"- Melee defence"}','{"text":"- Cauterize"}']}} destroy
  setblock ~1 ~-1 ~8 spruce_wall_sign[facing=east]{front_text:{color:"light_blue",has_glowing_text:1b,messages:['{"text":"Ammo","bold":true}','{"text":"1 Slot","italic":true}','{"text":"- Refills gun"}','{"text":"- Good trade"}']}} destroy
  # East
  setblock ~3 ~-1 ~ spruce_wall_sign[facing=west]{front_text:{color:"light_blue",has_glowing_text:1b,messages:['{"text":"Harmonica","bold":true}','{"text":"1 Slot","italic":true}','{"text":"- Aids sanity"}','{"text":"- May stop raid"}']}} destroy
  setblock ~3 ~-1 ~1 spruce_wall_sign[facing=west]{front_text:{color:"light_blue",has_glowing_text:1b,messages:['{"text":"Map","bold":true}','{"text":"1 Slot","italic":true}','{"text":"- Extra locations"}','{"text":"- Aids rescue"}']}} destroy
  setblock ~3 ~-1 ~2 spruce_wall_sign[facing=west]{front_text:{color:"light_blue",has_glowing_text:1b,messages:['{"text":"Medkit","bold":true}','{"text":"2 Slots","italic":true}','{"text":"- Cures sickness"}','{"text":"- Cures injury"}']}} destroy
  setblock ~3 ~-1 ~3 spruce_wall_sign[facing=west]{front_text:{color:"light_blue",has_glowing_text:1b,messages:['{"text":"Padlock","bold":true}','{"text":"1 Slot","italic":true}','{"text":"- Solo bunker"}','{"text":"defence"}']}} destroy
  setblock ~3 ~-1 ~4 spruce_wall_sign[facing=west]{front_text:{color:"light_blue",has_glowing_text:1b,messages:['{"text":"Radio","bold":true}','{"text":"1 Slot","italic":true}','{"text":"- Aids sanity"}','{"text":"- Aids rescue"}']}} destroy
  setblock ~3 ~-1 ~5 spruce_wall_sign[facing=west]{front_text:{color:"light_blue",has_glowing_text:1b,messages:['{"text":"Soup","bold":true}','{"text":"1 Slot","italic":true}','{"text":"- Adds soup for"}','{"text":"10 days"}']}} destroy
  setblock ~3 ~-1 ~6 spruce_wall_sign[facing=west]{front_text:{color:"light_blue",has_glowing_text:1b,messages:['{"text":"Suitcase","bold":true}','{"text":"3 Slots","italic":true}','{"text":"- Carry 3 items"}','{"text":"to the surface"}']}} destroy
  setblock ~3 ~-1 ~7 spruce_wall_sign[facing=west]{front_text:{color:"light_blue",has_glowing_text:1b,messages:['{"text":"Water","bold":true}','{"text":"1 Slot","italic":true}','{"text":"- Adds water for"}','{"text":"5 days"}']}} destroy
  setblock ~3 ~-1 ~8 spruce_wall_sign[facing=west]{front_text:{color:"light_blue",has_glowing_text:1b,messages:['{"text":"Body Armour","bold":true}','{"text":"3 Slots","italic":true}','{"text":"- Bandit defence"}','{"text":""}']}} destroy

# Extra Info
  # Highscores
  setblock ~1 ~1 ~ spruce_wall_sign[facing=south]{front_text:{color:"light_blue",has_glowing_text:1b,messages:['{"text":"Highscores","bold":true,"underlined":true}','{"text":""}','{"text":"","clickEvent":{"action":"run_command","value":"/function gc:states/2_lobby/show/show_highscores"}}','{"text":"","clickEvent":{"action":"run_command","value":"/function gc:sounds/menu_click"}}']}} destroy
  # Ideal Settings
  setblock ~2 ~1 ~ spruce_wall_sign[facing=south]{front_text:{color:"light_blue",has_glowing_text:1b,messages:['{"text":"Ideal Settings","bold":true,"underlined":true}','{"text":""}','{"text":"","clickEvent":{"action":"run_command","value":"/function gc:states/2_lobby/show/show_settings"}}','{"text":"","clickEvent":{"action":"run_command","value":"/function gc:sounds/menu_click"}}']}} destroy
  # Resource Pack
  setblock ~3 ~1 ~ spruce_wall_sign[facing=south]{front_text:{color:"light_blue",has_glowing_text:1b,messages:['{"text":"Resource Pack","bold":true,"underlined":true}','{"text":""}','{"text":"","clickEvent":{"action":"run_command","value":"/function gc:states/2_lobby/show/show_resource_pack_url"}}','{"text":"","clickEvent":{"action":"run_command","value":"/function gc:sounds/menu_click"}}']}} destroy
  
# Developer Info
  # Based On
  setblock ~1 ~1 ~-5 spruce_wall_sign[facing=south]{front_text:{color:"light_blue",has_glowing_text:1b,messages:['{"text":"Based On","bold":true,"underlined":true}','{"text":"60 Seconds by"}','{"text":"Robot Gentleman","clickEvent":{"action":"run_command","value":"/function gc:states/2_lobby/show/show_store_url"}}','{"text":"","clickEvent":{"action":"run_command","value":"/function gc:sounds/menu_click"}}']}} destroy
  # Credits
  setblock ~3 ~1 ~-5 spruce_wall_sign[facing=south]{front_text:{color:"light_blue",has_glowing_text:1b,messages:['{"text":"Credits","bold":true,"underlined":true}','{"text":""}','{"text":"","clickEvent":{"action":"run_command","value":"/function gc:states/2_lobby/show/show_credits"}}','{"text":"","clickEvent":{"action":"run_command","value":"/function gc:sounds/menu_click"}}']}} destroy