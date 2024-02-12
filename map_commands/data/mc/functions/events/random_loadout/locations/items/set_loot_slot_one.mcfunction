# Adjust 
  # No One Slots
  execute if score slotOneFree ItemsExpedition matches 0 run scoreboard players add sustenanceCount ItemsExpedition 1
  # Free One Slots
  execute if score slotOneFree ItemsExpedition matches 1.. run scoreboard players add slotOneCount ItemsExpedition 1
  execute if score slotOneFree ItemsExpedition matches 1.. run scoreboard players remove slotOneFree ItemsExpedition 1

# Decrease Scores
scoreboard players remove specialCountCopy ItemsExpedition 1
execute if score slotOneTry ItemsExpedition matches 1.. run scoreboard players remove slotOneTry ItemsExpedition 1