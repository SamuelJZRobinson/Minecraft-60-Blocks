# Adjust Counters
  # No Three Slots, No Two Slots, No One Slots
  execute if score slotThreeFree ItemsExpedition matches 0 if score slotTwoFree ItemsExpedition matches 0 if score slotOneFree ItemsExpedition matches 0 run scoreboard players add sustenanceCount ItemsExpedition 1
  # No Three Slots, No Two Slots, Free One Slots
  execute if score slotThreeFree ItemsExpedition matches 0 if score slotTwoFree ItemsExpedition matches 0 if score slotOneFree ItemsExpedition matches 1.. run scoreboard players add slotOneCount ItemsExpedition 1
  execute if score slotThreeFree ItemsExpedition matches 0 if score slotTwoFree ItemsExpedition matches 0 if score slotOneFree ItemsExpedition matches 1.. run scoreboard players remove slotOneFree ItemsExpedition 1
  # No Three Slots, Two Slots Free
  execute if score slotThreeFree ItemsExpedition matches 0 if score slotTwoFree ItemsExpedition matches 1.. run scoreboard players add slotTwoCount ItemsExpedition 1
  execute if score slotThreeFree ItemsExpedition matches 0 if score slotTwoFree ItemsExpedition matches 1.. run scoreboard players remove slotTwoFree ItemsExpedition 1
  # Three Slots Free
  execute if score slotThreeFree ItemsExpedition matches 1.. run scoreboard players add slotThreeCount ItemsExpedition 1
  execute if score slotThreeFree ItemsExpedition matches 1.. run scoreboard players remove slotThreeFree ItemsExpedition 1

# Decrease Scores
scoreboard players remove specialCountCopy ItemsExpedition 1
execute if score slotThreeTry ItemsExpedition matches 1.. run scoreboard players remove slotThreeTry ItemsExpedition 1