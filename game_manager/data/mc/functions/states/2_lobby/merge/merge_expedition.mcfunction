execute if score doPovExpedition Settings matches 0 run data merge block 20 131 7 {front_text:{color:"brown",has_glowing_text:1b,messages:['{"text":"Expedition","color":"yellow","bold":true,"underlined":true}','{"text":"Automatic","color":"red","italic":true}','{"text":"","clickEvent":{"action":"run_command","value":"/function mc:states/2_lobby/set/set_expedition"}}','{"text":"","clickEvent":{"action":"run_command","value":"/function mc:sounds/menu_click"}}']}}
execute if score doPovExpedition Settings matches 1 run data merge block 20 131 7 {front_text:{color:"brown",has_glowing_text:1b,messages:['{"text":"Expedition","color":"yellow","bold":true,"underlined":true}','{"text":"In-Person","color":"red","italic":true}','{"text":"","clickEvent":{"action":"run_command","value":"/function mc:states/2_lobby/set/set_expedition"}}','{"text":"","clickEvent":{"action":"run_command","value":"/function mc:sounds/menu_click"}}']}}