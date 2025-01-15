# Reset Scores
scoreboard players set padlockProtection MenuExpedition 1

# Remove Protection If Padlock Doesn't Exist
execute if score padlock ItemsBunker matches ..0 run scoreboard players set padlockProtection MenuExpedition 0

# Remove Protection If Padlock Equipped
execute if score slotOne MenuExpedition matches 16 run scoreboard players set padlockProtection MenuExpedition 0
execute if score slotTwo MenuExpedition matches 15 run scoreboard players set padlockProtection MenuExpedition 0
execute if score slotThree MenuExpedition matches 15 run scoreboard players set padlockProtection MenuExpedition 0
execute if score slotFour MenuExpedition matches 15 run scoreboard players set padlockProtection MenuExpedition 0