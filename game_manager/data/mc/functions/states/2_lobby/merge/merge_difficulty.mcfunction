# Notes
  # Nuke cloning is delayed to prevent seizures and unnecessary computations.

# Merge Signs
  # Atomic Drill
  execute if score gamemode Settings matches 1 run data merge block 21 37 14 {front_text:{color:"brown",has_glowing_text:1b,messages:['{"text":""}','{"text":""}','{"text":""}','{"text":""}']}}
  # Easy
  execute if score gamemode Settings matches 2.. if score difficulty Settings matches 1 run data merge block 21 37 14 {front_text:{color:"brown",has_glowing_text:1b,messages:['{"text":"Difficulty","color":"yellow","bold":true,"underlined":true}','{"text":"Easy","color":"red","italic":true}','{"text":"","clickEvent":{"action":"run_command","value":"/function mc:states/2_lobby/set/set_difficulty"}}','{"text":"","clickEvent":{"action":"run_command","value":"/function mc:sounds/menu_click"}}']}}
  # Medium
  execute if score gamemode Settings matches 2.. if score difficulty Settings matches 2 run data merge block 21 37 14 {front_text:{color:"brown",has_glowing_text:1b,messages:['{"text":"Difficulty","color":"yellow","bold":true,"underlined":true}','{"text":"Medium","color":"red","italic":true}','{"text":"","clickEvent":{"action":"run_command","value":"/function mc:states/2_lobby/set/set_difficulty"}}','{"text":"","clickEvent":{"action":"run_command","value":"/function mc:sounds/menu_click"}}']}}
  # Hard
  execute if score gamemode Settings matches 2.. if score difficulty Settings matches 3 run data merge block 21 37 14 {front_text:{color:"brown",has_glowing_text:1b,messages:['{"text":"Difficulty","color":"yellow","bold":true,"underlined":true}','{"text":"Hard","color":"red","italic":true}','{"text":"","clickEvent":{"action":"run_command","value":"/function mc:states/2_lobby/set/set_difficulty"}}','{"text":"","clickEvent":{"action":"run_command","value":"/function mc:sounds/menu_click"}}']}}

# Clone Nukes
schedule function mc:states/2_lobby/clone/clone_nukes 0.3s replace