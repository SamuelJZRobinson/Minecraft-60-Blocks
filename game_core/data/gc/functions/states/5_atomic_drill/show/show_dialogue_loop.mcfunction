# Title Times
title @a times 0 80 0

# Show Dialogue
title @a actionbar [{"text":"DI: ","color":"gray","bold":true},{"nbt":"dialogue[0]","storage":"atomicdrill","color":"white","bold":false}]
# Remove Array Item

data remove storage minecraft:atomicdrill dialogue[0]

# Loop
execute if data storage minecraft:atomicdrill dialogue[] run schedule function gc:states/5_atomic_drill/show/show_dialogue_loop 70t replace