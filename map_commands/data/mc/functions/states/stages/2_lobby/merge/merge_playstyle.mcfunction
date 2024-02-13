# Notes
  # gameMode determines how the game is played, including: 1 (atomic drill, learn vital skills), 2 (apocalypse, scavenge and survive bunker), 3 (scavenge, practice collecting items), and 4 (survival, spawn in bunker with random items)
  # The delay before cloning nukes prevents the risk of seizures and unnecessary computations
  # expeditionMode determines how expediion items are collected, including: 0 (randomly in the bunker), and 1 (in-person)
  # character determines who the player becomes while scavenging, including: 0 (Ted), and 1 (Dolores)
  # start prevents options from being selected when the game is already being played

# Manage Playstyle
  # Menu Sound
  execute if score started Lobby matches 1 run function mc:sounds/menu_click_error
  execute if score started Lobby matches 1 run tellraw @s {"text":"Game already in progress!","color":"red"}
  execute if score started Lobby matches 0 run function mc:sounds/menu_click

  # Keep In Range
  execute if score gameMode Settings matches 5.. run scoreboard players set gameMode Settings 1
  execute if score difficulty Settings matches 4.. run scoreboard players set difficulty Settings 1

# Create Lobby Menu
  # Character
  execute if score initialCharacter Settings matches 0 run data merge block 21 132 7 {GlowingText:1b, Color:"light_blue",Text1:'{"text":"Character","clickEvent":{"action":"run_command","value":"execute unless score started Lobby matches 1 run scoreboard players set initialCharacter Settings 1"},"bold":true}',Text2:'{"text":"Ted","clickEvent":{"action":"run_command","value":"function mc:play/lobby/manage_playstyle"}}',Text4:'{"text":"Click to cycle","underlined":true,"color":"dark_blue"}'}
  execute if score initialCharacter Settings matches 1 run data merge block 21 132 7 {GlowingText:1b, Color:"light_blue",Text1:'{"text":"Character","clickEvent":{"action":"run_command","value":"execute unless score started Lobby matches 1 run scoreboard players set initialCharacter Settings 0"},"bold":true}',Text2:'{"text":"Dolores","clickEvent":{"action":"run_command","value":"function mc:play/lobby/manage_playstyle"}}',Text4:'{"text":"Click to cycle","underlined":true,"color":"dark_blue"}'}

  # Gamemode
  execute if score gameMode Settings matches 1 run data merge block 22 131 7 {GlowingText:1b, Color:"light_blue",Text1:'{"text":"Gamemode","clickEvent":{"action":"run_command","value":"execute unless score started Lobby matches 1 run scoreboard players add gameMode Settings 1"},"bold":true}',Text2:'{"text":"Atomic Drill","clickEvent":{"action":"run_command","value":"function mc:play/lobby/manage_playstyle"}}',Text4:'{"text":"Click to cycle","underlined":true,"color":"dark_blue"}'}
  execute if score gameMode Settings matches 2 run data merge block 22 131 7 {GlowingText:1b, Color:"light_blue",Text1:'{"text":"Gamemode","clickEvent":{"action":"run_command","value":"execute unless score started Lobby matches 1 run scoreboard players add gameMode Settings 1"},"bold":true}',Text2:'{"text":"Apocalypse","clickEvent":{"action":"run_command","value":"function mc:play/lobby/manage_playstyle"}}',Text4:'{"text":"Click to cycle","underlined":true,"color":"dark_blue"}'}
  execute if score gameMode Settings matches 3 run data merge block 22 131 7 {GlowingText:1b, Color:"light_blue",Text1:'{"text":"Gamemode","clickEvent":{"action":"run_command","value":"execute unless score started Lobby matches 1 run scoreboard players add gameMode Settings 1"},"bold":true}',Text2:'{"text":"Scavenge","clickEvent":{"action":"run_command","value":"function mc:play/lobby/manage_playstyle"}}',Text4:'{"text":"Click to cycle","underlined":true,"color":"dark_blue"}'}
  execute if score gameMode Settings matches 4 run data merge block 22 131 7 {GlowingText:1b, Color:"light_blue",Text1:'{"text":"Gamemode","clickEvent":{"action":"run_command","value":"execute unless score started Lobby matches 1 run scoreboard players add gameMode Settings 1"},"bold":true}',Text2:'{"text":"Survival","clickEvent":{"action":"run_command","value":"function mc:play/lobby/manage_playstyle"}}',Text4:'{"text":"Click to cycle","underlined":true,"color":"dark_blue"}'}

  # Difficulty
  execute if score gameMode Settings matches 1 run data merge block 21 131 7 {GlowingText:1b, Color:"light_blue",Text1:'{"text":"Difficulty","bold":true}',Text2:'{"text":"None"}',Text4:'{"text":""}'}
  execute if score difficulty Settings matches 1 unless score gameMode Settings matches 1 run data merge block 21 131 7 {GlowingText:1b, Color:"light_blue",Text1:'{"text":"Difficulty","clickEvent":{"action":"run_command","value":"execute unless score started Lobby matches 1 run scoreboard players add difficulty Settings 1"},"bold":true}',Text2:'{"text":"Easy","clickEvent":{"action":"run_command","value":"function mc:play/lobby/manage_playstyle"}}',Text4:'{"text":"Click to cycle","underlined":true,"color":"dark_blue"}'}
  execute if score difficulty Settings matches 2 unless score gameMode Settings matches 1 run data merge block 21 131 7 {GlowingText:1b, Color:"light_blue",Text1:'{"text":"Difficulty","clickEvent":{"action":"run_command","value":"execute unless score started Lobby matches 1 run scoreboard players add difficulty Settings 1"},"bold":true}',Text2:'{"text":"Medium","clickEvent":{"action":"run_command","value":"function mc:play/lobby/manage_playstyle"}}',Text4:'{"text":"Click to cycle","underlined":true,"color":"dark_blue"}'}
  execute if score difficulty Settings matches 3 unless score gameMode Settings matches 1 run data merge block 21 131 7 {GlowingText:1b, Color:"light_blue",Text1:'{"text":"Difficulty","clickEvent":{"action":"run_command","value":"execute unless score started Lobby matches 1 run scoreboard players add difficulty Settings 1"},"bold":true}',Text2:'{"text":"Hard","clickEvent":{"action":"run_command","value":"function mc:play/lobby/manage_playstyle"}}',Text4:'{"text":"Click to cycle","underlined":true,"color":"dark_blue"}'}
  schedule function mc:states/stages/2_lobby/set/clone_nukes 0.3s replace

  # Expedition
  execute if score expeditionMode Lobby matches 0 run data merge block 20 131 7 {GlowingText:1b, Color:"light_blue",Text1:'{"text":"Expedition","clickEvent":{"action":"run_command","value":"execute unless score started Lobby matches 1 run scoreboard players set expeditionMode Lobby 1"},"bold":true}',Text2:'{"text":"Classic","clickEvent":{"action":"run_command","value":"function mc:play/lobby/manage_playstyle"}}',Text4:'{"text":"Click to cycle","underlined":true,"color":"dark_blue"}'}
  execute if score expeditionMode Lobby matches 1 run data merge block 20 131 7 {GlowingText:1b, Color:"light_blue",Text1:'{"text":"Expedition","clickEvent":{"action":"run_command","value":"execute unless score started Lobby matches 1 run scoreboard players set expeditionMode Lobby 0"},"bold":true}',Text2:'{"text":"In Person","clickEvent":{"action":"run_command","value":"function mc:play/lobby/manage_playstyle"}}',Text4:'{"text":"Click to cycle","underlined":true,"color":"dark_blue"}'}