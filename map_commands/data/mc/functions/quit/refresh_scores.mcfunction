# Notes
  # DOLORES_RESISTANCE and MaryResistance are generated dynamically
  # HUNGER_MAX and THIRST_MAX are n+1 since the max value minus one equals the expected duration (e.g., 11 days - 1 day = 10 days)

# Timers
scoreboard players set alertInterval Timer 0
scoreboard players set hornInterval Timer 8
scoreboard players set clock Timer 0
scoreboard players set COUNTDOWN_MIN Timer 5
scoreboard players set seconds Timer 0
scoreboard players set modulo Timer 0

# Lobby
scoreboard players set started Lobby 0
scoreboard players set playerCount Lobby 0
scoreboard players set PLAYER_LIMIT Lobby 1

# Highscore
scoreboard players set newHighscore HighScore 0

# Atomic Drill
scoreboard players set dialogue AtomicDrill 0
scoreboard players set itemCount AtomicDrill 0
scoreboard players set task AtomicDrill 0
scoreboard players set stage AtomicDrill 0
scoreboard players set expeditionDeath AtomicDrill 0

# Status Effects
  # Levels
  scoreboard players set BREAKDOWN_MIN StatusLevels 12
  scoreboard players set BREAKDOWN_RAGE_MAX StatusLevels 18
  scoreboard players set BREAKDOWN_MAX StatusLevels 35
  scoreboard players set FATIGUE_MIN StatusLevels 16
  scoreboard players set FATIGUE_MAX StatusLevels 24
  scoreboard players set HUNGER_MIN StatusLevels 3
  scoreboard players set HUNGER_MID StatusLevels 6
  scoreboard players set HUNGER_MAX StatusLevels 11
  scoreboard players set THIRST_MIN StatusLevels 2
  scoreboard players set THIRST_MID StatusLevels 4
  scoreboard players set THIRST_MAX StatusLevels 6
  scoreboard players set INFECTION_MIN StatusLevels 14
  scoreboard players set INFECTION_MAX StatusLevels 28
  scoreboard players set SANITY_MIN StatusLevels 0
  scoreboard players set SANITY_MAX StatusLevels 7
  scoreboard players set SICKNESS_MIN StatusLevels 5
  scoreboard players set SICKNESS_MAX StatusLevels 20
  # Odds
  scoreboard players set BUNKER_BLACKOUT StatusOdds 70
  scoreboard players set CANNIBALISM StatusOdds 15
  scoreboard players set CRAZY StatusOdds 2
  scoreboard players set CRAZY_RAGE StatusOdds 6
  scoreboard players set DIFFICULTY_PERCENTAGE StatusOdds 20
  scoreboard players set FATIGUE StatusOdds 8
  scoreboard players set INFECTION StatusOdds 14
  scoreboard players set MENTAL_BREAKDOWN StatusOdds 12
  scoreboard players set MUTATE StatusOdds 300
  scoreboard players set REVIVE StatusOdds 300
  scoreboard players set SICKNESS_DEATH StatusOdds 5
  scoreboard players set SICKNESS_STARVATION StatusOdds 5
  scoreboard players set SICKNESS_DEHYDRATION StatusOdds 3
  # Dolores Crazy Resistance (Mode, n+1)
  scoreboard players set mode em 2
  scoreboard players set notRandom em 1
  scoreboard players operation memory em = MENTAL_BREAKDOWN StatusOdds
  scoreboard players set math_in1 em 20
  function mc:events/random_loadout/house/items/get_percentage
  scoreboard players operation DOLORES_RESISTANCE StatusOdds = math_out em
  # Mary Crazy Resistance (Mode, n+1)
  scoreboard players set mode em 3
  scoreboard players set notRandom em 1
  scoreboard players operation memory em = MENTAL_BREAKDOWN StatusOdds
  scoreboard players set math_in1 em 20
  function mc:events/random_loadout/house/items/get_percentage
  scoreboard players operation MARY_RESISTANCE StatusOdds = math_out em

# Scavenge
  # Miscellaneous
  scoreboard players set lockInventory GameStatus 0
  scoreboard players reset * OpenShulkerBox
  scoreboard players set survived GameStatus 0
  # Items
  scoreboard players set ammo ItemsBunker 0
  scoreboard players set axe ItemsBunker 0
  scoreboard players set bottles ItemsBunker 0
  scoreboard players set boyScoutHandbook ItemsBunker 0
  scoreboard players set bugSpray ItemsBunker 0
  scoreboard players set cans ItemsBunker 0
  scoreboard players set cards ItemsBunker 0
  scoreboard players set checkers ItemsBunker 0
  scoreboard players set flashlight ItemsBunker 0
  scoreboard players set gasMask ItemsBunker 0
  scoreboard players set gun ItemsBunker 0
  scoreboard players set harmonica ItemsBunker 0
  scoreboard players set map ItemsBunker 0
  scoreboard players set medkit ItemsBunker 0
  scoreboard players set padlock ItemsBunker 0
  scoreboard players set radio ItemsBunker 0
  scoreboard players set suitcase ItemsBunker 0
  scoreboard players set armour ItemsBunker 0

# Characters
  # Dolores
  scoreboard players set build DoloresStatus 0
  scoreboard players operation soup DoloresStatus = HUNGER_MAX StatusLevels
  scoreboard players set soupLevel DoloresStatus 0
  scoreboard players operation water DoloresStatus = THIRST_MAX StatusLevels
  scoreboard players set waterLevel DoloresStatus 0
  scoreboard players set alive DoloresStatus 0
  scoreboard players set escaped DoloresStatus 0
  scoreboard players set fatigued DoloresStatus 0
  scoreboard players set injured DoloresStatus 0
  scoreboard players set injuredLevel DoloresStatus 0
  scoreboard players set crazy DoloresStatus 0
  scoreboard players set crazyRage DoloresStatus 0
  scoreboard players operation sanity DoloresStatus = SANITY_MAX StatusLevels
  scoreboard players set sick DoloresStatus 0
  scoreboard players set survivedNuke DoloresStatus 1
  scoreboard players set tired DoloresStatus 0
  scoreboard players operation sickness DoloresStatus = SICKNESS_MAX StatusLevels
  scoreboard players operation breakdown DoloresStatus = BREAKDOWN_MAX StatusLevels
  scoreboard players operation infection DoloresStatus = INFECTION_MAX StatusLevels
  
  # Mary
  scoreboard players set build MaryStatus 0
  scoreboard players operation soup MaryStatus = HUNGER_MAX StatusLevels
  scoreboard players set soupLevel MaryStatus 0
  scoreboard players operation water MaryStatus = THIRST_MAX StatusLevels
  scoreboard players set waterLevel MaryStatus 0
  scoreboard players set alive MaryStatus 0
  scoreboard players set escaped MaryStatus 0
  scoreboard players set fatigued MaryStatus 0
  scoreboard players set injured MaryStatus 0
  scoreboard players set injuredLevel MaryStatus 0
  scoreboard players set crazy MaryStatus 0
  scoreboard players set crazyRage MaryStatus 0
  scoreboard players set mutated MaryStatus 0
  scoreboard players operation sanity MaryStatus = SANITY_MAX StatusLevels
  scoreboard players set sick MaryStatus 0
  scoreboard players set survivedNuke MaryStatus 1
  scoreboard players set tired MaryStatus 0
  scoreboard players operation sickness MaryStatus = SICKNESS_MAX StatusLevels
  scoreboard players operation breakdown MaryStatus = BREAKDOWN_MAX StatusLevels
  scoreboard players operation infection MaryStatus = INFECTION_MAX StatusLevels
  
  # Ted
  scoreboard players set build TedStatus 0
  scoreboard players operation soup TedStatus = HUNGER_MAX StatusLevels
  scoreboard players set soupLevel TedStatus 0
  scoreboard players operation water TedStatus = THIRST_MAX StatusLevels
  scoreboard players set waterLevel TedStatus 0
  scoreboard players set alive TedStatus 0
  scoreboard players set escaped TedStatus 0
  scoreboard players set fatigued TedStatus 0
  scoreboard players set injured TedStatus 0
  scoreboard players set injuredLevel TedStatus 0
  scoreboard players set crazy TedStatus 0
  scoreboard players set crazyRage TedStatus 0
  scoreboard players operation sanity TedStatus = SANITY_MAX StatusLevels
  scoreboard players set sick TedStatus 0
  scoreboard players set survivedNuke TedStatus 1
  scoreboard players set tired TedStatus 0
  scoreboard players operation sickness TedStatus = SICKNESS_MAX StatusLevels
  scoreboard players operation breakdown TedStatus = BREAKDOWN_MAX StatusLevels
  scoreboard players operation infection TedStatus = INFECTION_MAX StatusLevels

  # Timmy
  scoreboard players set build TimmyStatus 0
  scoreboard players operation soup TimmyStatus = HUNGER_MAX StatusLevels
  scoreboard players set soupLevel TimmyStatus 0
  scoreboard players operation water TimmyStatus = THIRST_MAX StatusLevels
  scoreboard players set waterLevel TimmyStatus 0
  scoreboard players set alive TimmyStatus 0
  scoreboard players set escaped TimmyStatus 0
  scoreboard players set fatigued TimmyStatus 0
  scoreboard players set injured TimmyStatus 0
  scoreboard players set injuredLevel TimmyStatus 0
  scoreboard players set crazy TimmyStatus 0
  scoreboard players set crazyRage TimmyStatus 0
  scoreboard players operation sanity TimmyStatus = SANITY_MAX StatusLevels
  scoreboard players set sick TimmyStatus 0
  scoreboard players set survivedNuke TimmyStatus 1
  scoreboard players set tired TimmyStatus 0
  scoreboard players operation sickness TimmyStatus = SICKNESS_MAX StatusLevels
  scoreboard players operation breakdown TimmyStatus = BREAKDOWN_MAX StatusLevels
  scoreboard players operation infection TimmyStatus = INFECTION_MAX StatusLevels

  # Feeding
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

  # Expedition
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
    # Gameplay
    scoreboard players set showEscape ItemsExpedition 0
    data modify block 2 60 34 Items set value {}
    # Items
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
    # Odds
    scoreboard players set SUPPLY_BOOST ExpeditionOdds 8
    scoreboard players set TIMMY_BOOST ExpeditionOdds 5
    scoreboard players set NO_LOOT ExpeditionOdds 14
    scoreboard players set FATIGUE_PENALTY ExpeditionOdds 10
    scoreboard players set ITEM_TIER ExpeditionOdds 6
    scoreboard players set ITEM_BOOST ExpeditionOdds 4
    scoreboard players set THREAT_LEVEL_ONE ExpeditionOdds 3
    scoreboard players set THREAT_LEVEL_TWO ExpeditionOdds 6
    scoreboard players set THREAT_LEVEL_THREE ExpeditionOdds 9

  # Events
  scoreboard players set event ChestMenuEvent 0
  scoreboard players set choice ChestMenuEvent 0
  scoreboard players set submit ChestMenuEvent 0
  scoreboard players set mutateRequest ChestMenuEvent 0
  
# Chest Menu
scoreboard players reset * ChestMenuMain
scoreboard players set bool ChestMenuMain 0
scoreboard players set items ChestMenuMain 0
scoreboard players set selection ChestMenuMain 0

# Firearms
scoreboard players reset * GunCooldown
scoreboard players reset * UseCarrotStick
scoreboard players reset * GunType

# Open Container
scoreboard players reset * OpenChestMenu
scoreboard players reset * OpenShulkerBox

# Player Related
scoreboard players reset * PlayerHunger
scoreboard players reset * PlayerDeaths

# Game Status
  # Gameplay
  scoreboard players set adultsAlive GameStatus 0
  scoreboard players set childrenAlive GameStatus 0
  scoreboard players set totalAlive GameStatus 0
  scoreboard players set totalPresent GameStatus 0
  scoreboard players set blindness GameStatus 0
  scoreboard players set loadingStatus GameStatus 0
  scoreboard players set preBunkerLook GameStatus 0
  scoreboard players set bunkerLook GameStatus 0
  scoreboard players set characterRevived GameStatus 0
  scoreboard players set day GameStatus 0
  scoreboard players set ending GameStatus 0
  scoreboard players set lockedSlots GameStatus 0
  scoreboard players set lockedSlotsMax GameStatus 0
  scoreboard players set music GameStatus 0
  # Statistics
  scoreboard players set expeditionLoot GameStatus 0
  scoreboard players set isEvil GameStatus 0
  scoreboard players set noDecisions GameStatus 0
  scoreboard players set shelterDefences GameStatus 0
  scoreboard players set soupConsumed GameStatus 0
  scoreboard players set successfulExpeditions GameStatus 0
  scoreboard players set waterConsumed GameStatus 0
  scoreboard players set yesDecisions GameStatus 0

# Check Items
scoreboard players set stage CheckItems 1
scoreboard players set itemId CheckItems 0
scoreboard players set itemsOwed CheckItems 0
scoreboard players set itemsTotal CheckItems 0
scoreboard players set destroyItemFails CheckItems 0

# Item Bundles
function mc:quit/refresh_bundles

# Math
  # Settings
  scoreboard players set mode em 1
  scoreboard players set dynamicDifficulty em 0
  scoreboard players set memory em 0
  scoreboard players set notRandom em 0
  scoreboard players set startOne em 0
  # Input And Output
  scoreboard players set math_in1 em 0
  scoreboard players set math_in2 em 0
  scoreboard players set math_out em 0