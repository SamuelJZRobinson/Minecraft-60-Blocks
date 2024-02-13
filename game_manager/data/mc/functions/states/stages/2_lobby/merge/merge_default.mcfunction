# Game Menu
  # Character
  data merge block 21 132 7 {Color:"brown",GlowingText:1b,Text1:'{"text":"Character","color":"yellow","clickEvent":{"action":"run_command","value":"function mc:states/stages/2_lobby/set/set_character"},"bold":true}',Text2:'{"text":"#","color":"red"}',Text4:'{"text":"","color":"dark_red","clickEvent":{"action":"run_command","value":"function mc:sounds/menu_click"}}'}
  # Gamemode
  data merge block 22 131 7 {Color:"brown",GlowingText:1b,Text1:'{"text":"Gamemode","color":"yellow","clickEvent":{"action":"run_command","value":"function mc:states/stages/2_lobby/set/set_gamemode"},"bold":true}',Text2:'{"text":"#","color":"red}',Text4:'{"text":"","color":"dark_red","clickEvent":{"action":"run_command","value":"function mc:sounds/menu_click"}}'}
  # Difficulty
  data merge block 21 131 7 {Color:"brown",GlowingText:1b,Text1:'{"text":"Difficulty","color":"yellow","clickEvent":{"action":"run_command","value":"execute unless score gamemode Settings matches 1 run function mc:states/stages/2_lobby/set/set_difficulty"},"bold":true}',Text2:'{"text":"#","color":"red}',Text4:'{"text":"","clickEvent":{"action":"run_command","value":"execute unless score gamemode Settings matches 1 run function mc:sounds/menu_click"}}'}
  # Expedition
  data merge block 20 131 7 {Color:"brown",GlowingText:1b,Text1:'{"text":"Expedition","color":"yellow","clickEvent":{"action":"run_command","value":"function mc:states/stages/2_lobby/set/set_expedition"},"bold":true}',Text2:'{"text":"#","color":"red}',Text4:'{"text":"","clickEvent":{"action":"run_command","value":"function mc:sounds/menu_click"}}'}
  # Start Game
  data merge block 21 130 7 {Color:"brown",GlowingText:1b,Text1:'{"text":"Start Game","color":"green","bold":true}',Text2:'{"text":"","clickEvent":{"action":"run_command","value":"scoreboard players set state GameStatus 3"}}',Text3:'{"text":"","clickEvent":{"action":"run_command","value":"function mc:states/stages/manage_states"}}',Text4:'{"text":"","clickEvent":{"action":"run_command","value":"function mc:sounds/menu_click"}}'}

# Items
  # Ammo
  data merge block 20 130 5 {Color:"light_blue",GlowingText:1b,Text1:'{"text":"Ammo","bold":true}',Text2:'{"text":"1 Slot","italic":true}',Text3:'{"text":"Good for refilling"}',Text4:'{"text":"gun & trades"}'}
  # Axe
  data merge block 20 130 4 {Color:"light_blue",GlowingText:1b,Text1:'{"text":"Axe","bold":true}',Text2:'{"text":"2 Slots","italic":true}',Text3:'{"text":"Good for defence"}',Text4:'{"text":",rescue, & wounds"}'}
  # Boy Scout Handbook
  data merge block 20 130 3 {Color:"light_blue",GlowingText:1b,Text1:'{"text":"Boyscout Book","bold":true}',Text2:'{"text":"1 Slot","italic":true}',Text3:'{"text":"Gives helpful tips"}',Text4:'{"text":"& repairs tools"}'}
  # Bug Spray
  data merge block 20 130 2 {Color:"light_blue",GlowingText:1b,Text1:'{"text":"Bug Spray","bold":true}',Text2:'{"text":"1 Slot","italic":true}',Text3:'{"text":"Kills insects &"}',Text4:'{"text":"can make a medkit"}'}
  # Cards
  data merge block 20 130 1 {Color:"light_blue",GlowingText:1b,Text1:'{"text":"Cards","bold":true}',Text2:'{"text":"1 Slot","italic":true}',Text3:'{"text":"Good for sanity,"}',Text4:'{"text":"trades, & rescue"}'}
  # Checkers
  data merge block 20 130 0 {Color:"light_blue",GlowingText:1b,Text1:'{"text":"Checkers","bold":true}',Text2:'{"text":"1 Slot","italic":true}',Text3:'{"text":"Good for sanity"}',Text4:'{"text":"& trades"}'}
  # Flashlight
  data merge block 20 130 -1 {Color:"light_blue",GlowingText:1b,Text1:'{"text":"Flashlight","bold":true}',Text2:'{"text":"1 Slot","italic":true}',Text3:'{"text":"Brightens areas"}',Text4:'{"text":"& finds rescue"}'}
  # Gas Mask
  data merge block 20 130 -2 {Color:"light_blue",GlowingText:1b,Text1:'{"text":"Gas Mask","bold":true}',Text2:'{"text":"1 Slot","italic":true}',Text3:'{"text":"Reduces radiation"}',Text4:'{"text":"sickness"}'}
  # Gun
  data merge block 20 130 -3 {Color:"light_blue",GlowingText:1b,Text1:'{"text":"Gun","bold":true}',Text2:'{"text":"2 Slots","italic":true}',Text3:'{"text":"Good for defence"}',Text4:'{"text":"& needs ammo"}'}
  # Harmonica
  data merge block 22 130 -3 {Color:"light_blue",GlowingText:1b,Text1:'{"text":"Harmonica","bold":true}',Text2:'{"text":"1 Slot","italic":true}',Text3:'{"text":"Adds sanity &"}',Text4:'{"text":"may stop raids"}'}
  # Map
  data merge block 22 130 -2 {Color:"light_blue",GlowingText:1b,Text1:'{"text":"Map","bold":true}',Text2:'{"text":"1 Slot","italic":true}',Text3:'{"text":"Adds locations"}',Text4:'{"text":"& finds rescue"}'}
  # Medkit
  data merge block 22 130 -1 {Color:"light_blue",GlowingText:1b,Text1:'{"text":"Medkit","bold":true}',Text2:'{"text":"2 Slots","italic":true}',Text3:'{"text":"Cures illnesses"}',Text4:'{"text":"& injuries"}'}
  # Padlock
  data merge block 22 130 0 {Color:"light_blue",GlowingText:1b,Text1:'{"text":"Padlock","bold":true}',Text2:'{"text":"1 Slot","italic":true}',Text3:'{"text":"Keeps out"}',Text4:'{"text":"trespassers"}'}
  # Radio
  data merge block 22 130 1 {Color:"light_blue",GlowingText:1b,Text1:'{"text":"Radio","bold":true}',Text2:'{"text":"1 Slot","italic":true}',Text3:'{"text":"Good for sanity"}',Text4:'{"text":"& rescue"}'}
  # Soup Can
  data merge block 22 130 2 {Color:"light_blue",GlowingText:1b,Text1:'{"text":"Soup Can","bold":true}',Text2:'{"text":"1 Slot","italic":true}',Text3:'{"text":"Restores hunger"}',Text4:'{"text":"for 10 days"}'}
  # Suitcase
  data merge block 22 130 3 {Color:"light_blue",GlowingText:1b,Text1:'{"text":"Suitcase","bold":true}',Text2:'{"text":"3 Slots","italic":true}',Text3:'{"text":"Takes three items"}',Text4:'{"text":"to the surface"}'}
  # Water Bottle
  data merge block 22 130 4 {Color:"light_blue",GlowingText:1b,Text1:'{"text":"Water Bottle","bold":true}',Text2:'{"text":"1 Slot","italic":true}',Text3:'{"text":"Restores thirst"}',Text4:'{"text":"for 5 days"}'}
  # Body Armour
  data merge block 22 130 5 {Color:"light_blue",GlowingText:1b,Text1:'{"text":"Body Armour","bold":true}',Text2:'{"text":"3 Slots","italic":true}',Text3:'{"text":"Protects against"}',Text4:'{"text":"bandit ambushes"}'}

# Extra Info
  # Goal
  data merge block 22 132 -3 {Color:"light_blue",GlowingText:1b,Text1:'{"text":"Goal Of Game","bold":true}',Text2:'{"text":"Collect supplies,"}',Text3:'{"text":"protect family,"}',Text4:'{"text":"find rescue"}'}
  # Highscore
  data merge block 20 132 -3 {Color:"light_blue",GlowingText:1b,Text1:'{"text":"Highscores","bold":true,"clickEvent":{"action":"run_command","value":"function mc:sounds/menu_click"}}',Text4:'{"text":"Click to view","color":"dark_blue","underlined":true,"clickEvent":{"action":"run_command","value":"function mc:states/stages/2_lobby/show/show_highscores"}}'}
  # Ideal Settings
  data merge block 20 131 -3 {Color:"light_blue",GlowingText:1b,Text1:'{"text":"Ideal Settings","bold":true,"clickEvent":{"action":"run_command","value":"function mc:sounds/menu_click"}}',Text4:'{"text":"Click to view","color":"dark_blue","underlined":true,"clickEvent":{"action":"run_command","value":"function mc:states/stages/2_lobby/show/show_settings"}}'}
  # Resource Pack
  data merge block 22 131 -3 {Color:"light_blue",GlowingText:1b,Text1:'{"text":"Resource Pack","bold":true,"clickEvent":{"action":"run_command","value":"function mc:sounds/menu_click"}}',Text4:'{"text":"Click to download","color":"dark_blue","underlined":true,"clickEvent":{"action":"run_command","value":"function mc:states/stages/2_lobby/show/show_resource_pack_url"}}'}
  # Game Creator
  data merge block 20 132 -8 {Color:"light_blue",GlowingText:1b,Text1:'{"text":"Game Creator","bold":true,"clickEvent":{"action":"run_command","value":"function mc:sounds/menu_click"}}',Text2:'{"text":"Robot Gentleman","clickEvent":{"action":"run_command","value":"function mc:states/stages/2_lobby/show/show_store_url"}}',Text4:'{"text":"Click to visit","underlined":true,"color":"dark_blue"}'}
  # Credits
  data merge block 22 132 -8 {Color:"light_blue",GlowingText:1b,Text1:'{"text":"Map Creator","bold":true,"clickEvent":{"action":"run_command","value":"function mc:sounds/menu_click"}}',Text2:'{"text":"browneyeI"}',Text4:'{"text":"Click for credits","color":"dark_blue","underlined":true,"clickEvent":{"action":"run_command","value":"function mc:states/stages/2_lobby/show/show_credits"}}'}