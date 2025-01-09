# Notes
  # Nuke cloning is delayed to prevent seizures and unnecessary computations.

# Atomic Drill
execute if score gamemode Settings matches 1 run data merge block 22 37 14 {front_text:{color:"brown",has_glowing_text:1b,messages:['{"text":"Gamemode","color":"yellow","bold":true,"underlined":true}','{"text":"Atomic Drill","color":"red","italic":true}','{"text":"","clickEvent":{"action":"run_command","value":"/function mc:states/2_lobby/set/set_gamemode"}}','{"text":"","clickEvent":{"action":"run_command","value":"/function mc:sounds/menu_click"}}']}}
# Apocalypse
execute if score gamemode Settings matches 2 run data merge block 22 37 14 {front_text:{color:"brown",has_glowing_text:1b,messages:['{"text":"Gamemode","color":"yellow","bold":true,"underlined":true}','{"text":"Apocalypse","color":"red","italic":true}','{"text":"","clickEvent":{"action":"run_command","value":"/function mc:states/2_lobby/set/set_gamemode"}}','{"text":"","clickEvent":{"action":"run_command","value":"/function mc:sounds/menu_click"}}']}}
# Scavenge
execute if score gamemode Settings matches 3 run data merge block 22 37 14 {front_text:{color:"brown",has_glowing_text:1b,messages:['{"text":"Gamemode","color":"yellow","bold":true,"underlined":true}','{"text":"Scavenge","color":"red","italic":true}','{"text":"","clickEvent":{"action":"run_command","value":"/function mc:states/2_lobby/set/set_gamemode"}}','{"text":"","clickEvent":{"action":"run_command","value":"/function mc:sounds/menu_click"}}']}}
# Survival
execute if score gamemode Settings matches 4 run data merge block 22 37 14 {front_text:{color:"brown",has_glowing_text:1b,messages:['{"text":"Gamemode","color":"yellow","bold":true,"underlined":true}','{"text":"Survival","color":"red","italic":true}','{"text":"","clickEvent":{"action":"run_command","value":"/function mc:states/2_lobby/set/set_gamemode"}}','{"text":"","clickEvent":{"action":"run_command","value":"/function mc:sounds/menu_click"}}']}}

# Clone Nukes
schedule function mc:states/2_lobby/clone/clone_nukes 0.3s replace

# Render Other Signs
function mc:states/2_lobby/merge/merge_difficulty