# Settings
scoreboard players set totalOptions MenuEvent 2

# Question
data modify block ~ ~ ~ Items insert 0 value {Slot:4b,id:"minecraft:gold_block",count:1,tag:{isMenu:1b,page:3,selection:0,display:{Name:'{"text":"Let the visitor inside?","color":"gray","bold":true}'}}}

# Output
execute if score submit MenuEvent matches 1 if score choice MenuEvent matches 0 run give @s written_book{dailyStory:1b,title:"Journal",author:"BlackeyeI",generation:0,pages:['[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nUnbelievable! Those two knocks were what you were waiting for; it could be months before another team comes to your aid! If this was a real scenario, you might as well consider yourself toast!","bold":false}]','[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nThroughout this simulation, I can only hope that you have realized the relentless nature of nuclear war and the vital skills and procedures needed to survive a cris of this magnitude. ","bold":false}]','[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nRemember to accumulate as many tools as possible to increase your versatility, always enter the shelter on time regardless of who or what you already have, delay meals whenever possible, plan ahead to get the best of situations, obey every military instruction,","bold":false}]','[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nmilitary instruction, and do not feel obligated to invite strangers into the bunker.\\n\\nSince this is the end of your experience, you may now return to the surface and continue experiencing the liberties of the American dream.","bold":false}]','[{"text":"Day ","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"","bold":true}]}},{"score":{"name":"day","objective":"GameStatus"},"hoverEvent":{"action":"show_text","contents":[{"text":"","bold":true}]}},{"text":"\\nHowever, when nearby sirens sound off, it is your duty to stop whatever you are doing and prepare the shelter.","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"","bold":true}]}}]','[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nNo matter what, recall your training and keep persevering to contact rescue parties. Hopefully, the apocalypse never comes, but I wish you well if it does. Perhaps we will meet again when it all blows over.","bold":false},{"text":"\\n\\nReturn to lobby","color":"#0000FF","bold":false,"underlined":true,"clickEvent":{"action":"run_command","value":"/function gc:utility/inventory/force_quit"}}]']} 1
execute if score submit MenuEvent matches 1 if score choice MenuEvent matches 1 run give @s written_book{dailyStory:1b,title:"Journal",author:"BlackeyeI",generation:0,pages:['[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nExcellent work. Your family can now escape the agonizing memories of the wasteland forever and hold steadfast to a promising future in the sanctuary of military personnel.","bold":false}]','[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nThroughout this simulation, I can only hope that you have realized the relentless nature of nuclear war and the vital skills and procedures needed to survive a cris of this magnitude. ","bold":false}]','[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nRemember to accumulate as many tools as possible to increase your versatility, always enter the shelter on time regardless of who or what you already have, delay meals whenever possible, plan ahead to get the best of situations, obey every military instruction,","bold":false}]','[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nmilitary instruction, and do not feel obligated to invite strangers into the bunker.\\n\\nSince this is the end of your experience, you may now return to the surface and continue experiencing the liberties of the American dream.","bold":false}]','[{"text":"Day ","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"","bold":true}]}},{"score":{"name":"day","objective":"GameStatus"},"hoverEvent":{"action":"show_text","contents":[{"text":"","bold":true}]}},{"text":"\\nHowever, when nearby sirens sound off, it is your duty to stop whatever you are doing and prepare the shelter.","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"","bold":true}]}}]','[{"text":"Day ","bold":true},{"score":{"name":"day","objective":"GameStatus"}},{"text":"\\nNo matter what, recall your training and keep persevering to contact rescue parties. Hopefully, the apocalypse never comes, but I wish you well if it does. Perhaps we will meet again when it all blows over.","bold":false},{"text":"\\n\\nReturn to lobby","color":"#0000FF","bold":false,"underlined":true,"clickEvent":{"action":"run_command","value":"/function gc:utility/inventory/force_quit"}}]']} 1