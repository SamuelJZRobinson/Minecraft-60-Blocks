# Sound
function mc:sounds/menu_click

# Show
tellraw @s {"text":"Highscores (hover)","color":"blue","hoverEvent":{"action":"show_text","contents":[{"text":"Days Survived: ","color":"dark_aqua"},{"score":{"name":"daysSurvived","objective":"Highscores"},"color":"aqua"},"\n","Successful Expeditions: ",{"score":{"name":"expeditionsDone","objective":"Highscores"},"color":"aqua"},"\n",{"text":"Expedition Loot: ","color":"dark_aqua"},{"score":{"name":"expeditionLoot","objective":"Highscores"},"color":"aqua"},"\n",{"text":"Water Consumed: ","color":"dark_aqua"},{"score":{"name":"waterConsumed","objective":"Highscores"},"color":"aqua"},"\n",{"text":"Soup Consumed: ","color":"dark_aqua"},{"score":{"name":"soupConsumed","objective":"Highscores"},"color":"aqua"},"\n",{"text":"No Decisions: ","color":"dark_aqua"},{"score":{"name":"noDecisions","objective":"Highscores"},"color":"aqua"},"\n",{"text":"Yes Decisions: ","color":"dark_aqua"},{"score":{"name":"yesDecisions","objective":"Highscores"},"color":"aqua"},"\n",{"text":"Shelter Defences: ","color":"dark_aqua"},{"score":{"name":"shelterDefences","objective":"Highscores"},"color":"aqua"}]}}