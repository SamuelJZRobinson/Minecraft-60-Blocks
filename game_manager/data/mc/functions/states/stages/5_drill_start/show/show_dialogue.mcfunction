# Task One (Goto Hallway Marker)
execute if score dialogue AtomicDrill matches 1 run title @s actionbar {"text":"Welcome to a simulated atomic drill! Pay attention and you could survive!","color":"white"}
execute if score dialogue AtomicDrill matches 2 run title @s actionbar {"text":"Do you need an invitation, move yourself to the marker!","color":"white"}

# Task Two (Goto Living Room Marker)
execute if score dialogue AtomicDrill matches 3 run title @s actionbar {"text":"There is hope afterall, keep those legs moving!","color":"white"}
execute if score dialogue AtomicDrill matches 4 run title @s actionbar {"text":"Once more, you know the drill. Marker. Living room. Get going!","color":"white"}

# Task Three (Find Timmy)
execute if score dialogue AtomicDrill matches 5 run title @s actionbar {"text":"Not bad! But you must be in better shape for what lies ahead!","color":"white"}
execute if score dialogue AtomicDrill matches 6 run title @s actionbar {"text":"Time for serious matters, find your son Timmy ASAP!","color":"white"}
execute if score dialogue AtomicDrill matches 7 run title @s actionbar {"text":"Family comes first! Grab the lad, he will visit the cosy shelter first.","color":"white"}

# Task Four (Find Soup In The Bathtub)
execute if score dialogue AtomicDrill matches 8 run title @s actionbar {"text":"Timmy is safe, but you need to stock the shelter with soup!","color":"white"}

# Task Five (Find Water In The Kitchen)
execute if score dialogue AtomicDrill matches 9 run title @s actionbar {"text":"Excellent, but without water you will melt away! Hunt for some bottles!","color":"white"}

# Task Six (Salvage Items)
execute if score dialogue AtomicDrill matches 10 run title @s actionbar {"text":"Stop clambering with that burden and salvage it!","color":"white"}
execute if score dialogue AtomicDrill matches 11 run title @s actionbar {"text":"Head to the shelter to keep your family and supplies safe.","color":"white"}

# Task Seven (Find Radio In The Living Room Shelf)
execute if score dialogue AtomicDrill matches 12 run title @s actionbar {"text":"Nobody knows when the apocalypse ends so find a radio to take with you.","color":"white"}

# Task Eight (Find Gas Mask On Wall)
execute if score dialogue AtomicDrill matches 13 run title @s actionbar {"text":"Take heed to broadcasts they remind you of vital equiptment.","color":"white"}

# Task Nine (Salvage Items)
execute if score dialogue AtomicDrill matches 14 run title @s actionbar {"text":"Your enthusiasm is what save lives. Now salvage that equipment, pronto!","color":"white"}

# Task Ten (Scavenge House)
execute if score dialogue AtomicDrill matches 15 run title @s actionbar {"text":"Bravo! Now it's time to apply your skills in a full simulation.","color":"white"}
execute if score dialogue AtomicDrill matches 16 run title @s actionbar {"text":"Sometimes you have extra time to wander, but you must pack after the siren!","color":"white"}
execute if score dialogue AtomicDrill matches 17 run title @s actionbar {"text":"Our warning system provides sixty seconds to gather items and family.","color":"white"}
execute if score dialogue AtomicDrill matches 18 run title @s actionbar {"text":"Remember to stand beside the shelter when your time is up!","color":"white"}
execute if score dialogue AtomicDrill matches 19 run scoreboard players set state GameStatus 4
execute if score dialogue AtomicDrill matches 19 run function mc:states/stages/4_setup/gamemodes/setup_scavenge

# Task Eleven (Failed To Enter Bunker)
execute if score dialogue AtomicDrill matches 20 run title @s actionbar {"text":"Even hares can sprint faster than you recruit!","color":"white"}
execute if score dialogue AtomicDrill matches 21 run title @s actionbar {"text":"If this was a real threat you would have perished!","color":"white"}
execute if score dialogue AtomicDrill matches 22 run title @s actionbar {"text":"Everything you collect is meaningless if you cannot use it!","color":"white"}
execute if score dialogue AtomicDrill matches 23 run title @s actionbar {"text":"Always make time to grasp the shelter door when the end is near!","color":"white"}
execute if score dialogue AtomicDrill matches 24 run scoreboard players set stage AtomicDrill 2

# Task Twelve (Entered Bunker)
execute if score dialogue AtomicDrill matches 25 run title @s actionbar {"text":"Although you understand how to scavenge your training is far from over.","color":"white"}
execute if score dialogue AtomicDrill matches 26 run title @s actionbar {"text":"Meet me downstairs for extended survival training, at ease!","color":"white"}