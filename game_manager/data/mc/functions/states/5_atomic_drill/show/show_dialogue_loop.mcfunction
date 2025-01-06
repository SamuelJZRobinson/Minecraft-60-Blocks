# Title Times
title @a times 0 80 0

# Show Dialogue
title @a actionbar {"nbt":"dialogue[0]","storage":"atomicdrill"}

# Remove Array Item
data remove storage minecraft:atomicdrill dialogue[0]

# Loop
execute if data storage minecraft:atomicdrill dialogue[] run schedule function mc:states/5_atomic_drill/show/show_dialogue_loop 70t replace