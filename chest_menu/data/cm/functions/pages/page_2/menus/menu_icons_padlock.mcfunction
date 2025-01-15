# Reset Scores
scoreboard players set padlockProtection MenuExplore 1

# Remove Protection If Padlock Doesn't Exist
execute if score padlock ItemsBunker matches ..0 run scoreboard players set padlockProtection MenuExplore 0

# Remove Protection If Padlock Equipped
execute if score slotOne MenuExplore matches 16 run scoreboard players set padlockProtection MenuExplore 0
execute if score slotTwo MenuExplore matches 15 run scoreboard players set padlockProtection MenuExplore 0
execute if score slotThree MenuExplore matches 15 run scoreboard players set padlockProtection MenuExplore 0
execute if score slotFour MenuExplore matches 15 run scoreboard players set padlockProtection MenuExplore 0