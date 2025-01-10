# Notes
  # Called from tf_raycast:raycast upon any targets whose hitbox collides with the raycast
  # Setting the max range according to the GunType will apply damage multiple times

# Set Scores
  # Items
  execute if entity @s[tag=hitboxAmmo] run scoreboard players set bunkerLook GameStatus 1
  execute if entity @s[tag=hitboxAxe] run scoreboard players set bunkerLook GameStatus 2
  execute if entity @s[tag=hitboxHandbook] run scoreboard players set bunkerLook GameStatus 3
  execute if entity @s[tag=hitboxBugSpray] run scoreboard players set bunkerLook GameStatus 4
  execute if entity @s[tag=hitboxCards] run scoreboard players set bunkerLook GameStatus 5
  execute if entity @s[tag=hitboxCheckers] run scoreboard players set bunkerLook GameStatus 6
  execute if entity @s[tag=hitboxFlashlight] run scoreboard players set bunkerLook GameStatus 7
  execute if entity @s[tag=hitboxGasMask] run scoreboard players set bunkerLook GameStatus 8
  execute if entity @s[tag=hitboxGun] run scoreboard players set bunkerLook GameStatus 9
  execute if entity @s[tag=hitboxHarmonica] run scoreboard players set bunkerLook GameStatus 10
  execute if entity @s[tag=hitboxMap] run scoreboard players set bunkerLook GameStatus 11
  execute if entity @s[tag=hitboxMedkit] run scoreboard players set bunkerLook GameStatus 12
  execute if entity @s[tag=hitboxPadlock] run scoreboard players set bunkerLook GameStatus 13
  execute if entity @s[tag=hitboxRadio] run scoreboard players set bunkerLook GameStatus 14
  execute if entity @s[tag=hitboxSoup] run scoreboard players set bunkerLook GameStatus 15
  execute if entity @s[tag=hitboxSoupBox] run scoreboard players set bunkerLook GameStatus 15
  execute if entity @s[tag=hitboxSuitcase] run scoreboard players set bunkerLook GameStatus 16
  execute if entity @s[tag=hitboxWater] run scoreboard players set bunkerLook GameStatus 17
  execute if entity @s[tag=hitboxWaterJug] run scoreboard players set bunkerLook GameStatus 17
  execute if entity @s[tag=hitboxBodyArmour] run scoreboard players set bunkerLook GameStatus 18
  # Characters
  execute if entity @s[tag=bunkerDolores] run scoreboard players set bunkerLook GameStatus 19
  execute if entity @s[tag=bunkerMary] run scoreboard players set bunkerLook GameStatus 20
  execute if entity @s[tag=bunkerTed] run scoreboard players set bunkerLook GameStatus 21
  execute if entity @s[tag=bunkerTimmy] run scoreboard players set bunkerLook GameStatus 22

# Set Name Visibility
function tf_raycast:bunker/set_item_name_visibility

# End raycast at max range (outside map)
scoreboard players set .distance tf_rc 90