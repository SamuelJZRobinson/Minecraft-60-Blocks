# CHEST OPENING
scoreboard objectives add OpenChestMenu minecraft.custom:minecraft.open_chest {"bold":true,"color":"white","text":"Open Chest Menu"}
scoreboard players reset * OpenChestMenu

# MAIN
scoreboard objectives add ChestMenuMain dummy {"bold":true,"color":"white","text":"Chest Menu Main"}
scoreboard players reset * ChestMenuMain
scoreboard players set bool ChestMenuMain 0
scoreboard players set items ChestMenuMain 0
scoreboard players set selection ChestMenuMain 0

# EVENTS
scoreboard objectives add ChestMenuEvent dummy {"bold":true,"color":"white","text":"Chest Menu Event"}
scoreboard players set event ChestMenuEvent 0
scoreboard players set choice ChestMenuEvent 0
scoreboard players set submit ChestMenuEvent 0
scoreboard players set mutateRequest ChestMenuEvent 0

# FEEDING
  scoreboard objectives add ChestMenuFeed dummy {"bold":true,"color":"white","text":"Chest Menu Feed"}
  # Dolores
  scoreboard players set doloresGiveCan ChestMenuFeed 0
  scoreboard players set doloresGiveBottle ChestMenuFeed 0
  # Mary
  scoreboard players set maryGiveCan ChestMenuFeed 0
  scoreboard players set maryGiveBottle ChestMenuFeed 0
  # Ted
  scoreboard players set tedGiveCan ChestMenuFeed 0
  scoreboard players set tedGiveBottle ChestMenuFeed 0
  # Timmy
  scoreboard players set timmyGiveCan ChestMenuFeed 0
  scoreboard players set timmyGiveBottle ChestMenuFeed 0
  # Medkit
  scoreboard players set giveMedkit ChestMenuFeed 0
  # Total
  scoreboard players set hasItems ItemsBunker 0
  scoreboard players set itemCount ItemsBunker 0
  scoreboard players set cansGiven ChestMenuFeed 0
  scoreboard players set bottlesGiven ChestMenuFeed 0

# EXPEDITION
  # MENU
    scoreboard objectives add ChestMenuExplore dummy {"bold":true,"color":"white","text":"Chest Menu Explore"}
    # Alerts
    scoreboard players set banditAlert ChestMenuExplore 0
    # ExpeditionOngoing is managed by cm:menu/page1/items
    scoreboard players set falloutAlert ChestMenuExplore 1
    scoreboard players set mutantProtection ChestMenuExplore 0
    scoreboard players set padlockProtection ChestMenuExplore 0
    # Characters
    scoreboard players set characterSelect ChestMenuExplore 0
    scoreboard players set characterSent ChestMenuExplore 0
    # Location (Neighbourhood Is Default)
    scoreboard players set locationSelect ChestMenuExplore 2
    scoreboard players set preLocationVisited ChestMenuExplore 0
    scoreboard players set locationVisited ChestMenuExplore 0
    # Metro Map
    scoreboard players set prePlayerY ChestMenuExplore 0
    scoreboard players set playerY ChestMenuExplore 0
    # Gear
    scoreboard players set slotOne ChestMenuExplore -1
    scoreboard players set slotTwo ChestMenuExplore -1
    scoreboard players set slotThree ChestMenuExplore -1
    scoreboard players set slotFour ChestMenuExplore -1
    scoreboard players set slotNumber ChestMenuExplore 1
    scoreboard players set slotSelection ChestMenuExplore 0
    # Prepared
    scoreboard players set expeditionPrepared ChestMenuExplore 0
    scoreboard players set prepare ChestMenuExplore 0
    # Duration
    scoreboard players set expeditionDuration ChestMenuExplore 0
  # ITEMS
    scoreboard objectives add ItemsExpedition dummy {"bold":true,"color":"white","text":"Items Expedition"}
    scoreboard players set showEscape ItemsExpedition 0
    data modify block 2 60 34 Items set value {}
    scoreboard players set deathChance ItemsExpedition 0
    scoreboard players set maxLoot ItemsExpedition 0
    scoreboard players set sustenanceCount ItemsExpedition 0
    scoreboard players set specialCount ItemsExpedition 0
    scoreboard players set specialCountCopy ItemsExpedition 0
    scoreboard players set specialRemove ItemsExpedition 0
    scoreboard players set slotOneCount ItemsExpedition 0
    scoreboard players set slotTwoCount ItemsExpedition 0
    scoreboard players set slotThreeCount ItemsExpedition 0
    scoreboard players set slotOneFree ItemsExpedition 0
    scoreboard players set slotTwoFree ItemsExpedition 0
    scoreboard players set slotThreeFree ItemsExpedition 0
    scoreboard players set slotOneTry ItemsExpedition 0
    scoreboard players set slotTwoTry ItemsExpedition 0
    scoreboard players set slotThreeTry ItemsExpedition 0
    scoreboard players set loadItem ItemsExpedition 0
    scoreboard players set soupCount ItemsExpedition 0
    scoreboard players set waterCount ItemsExpedition 0
  # ODDS
    scoreboard players set SUPPLY_BOOST ExpeditionOdds 8
    scoreboard players set TIMMY_BOOST ExpeditionOdds 5
    scoreboard players set NO_LOOT ExpeditionOdds 14
    scoreboard players set FATIGUE_PENALTY ExpeditionOdds 10
    scoreboard players set ITEM_TIER ExpeditionOdds 6
    scoreboard players set ITEM_BOOST ExpeditionOdds 4
    scoreboard players set THREAT_LEVEL_ONE ExpeditionOdds 3
    scoreboard players set THREAT_LEVEL_TWO ExpeditionOdds 6
    scoreboard players set THREAT_LEVEL_THREE ExpeditionOdds 9

# Player Related
scoreboard objectives add ExpeditionOdds dummy {"bold":true,"color":"white","text":"Expedition Odds"}
scoreboard objectives add MobHealth dummy {"bold":true,"color":"white","text":"Mob Health"}