# Generate Random Number (n+1)
scoreboard players set math_in1 em 1
scoreboard players set math_in2 em 21
function em:math/randomp

# Spawn Creature
execute if score math_out em matches 1 run summon armor_stand -1.50 52.00 28.50 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["bunkerJumpscare"],DisabledSlots:4144959,Passengers:[{id:"minecraft:guardian",Silent:1b,DeathLootTable:"minecraft:empty",NoAI:1b,Tags:["bunkerJumpscare"]}]}
execute if score math_out em matches 1 run teleport @e[type=minecraft:armor_stand,tag=bunkerJumpscare] -1.50 53.50 28.50
execute if score math_out em matches 1 run playsound minecraft:entity.drowned.hurt_water hostile @a -2 55 28 1 1 0
execute if score math_out em matches 1 run schedule function mc:events/easter_eggs/remove_jumpscare 10t replace