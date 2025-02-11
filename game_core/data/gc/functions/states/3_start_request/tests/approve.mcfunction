# Declare Started
scoreboard players set isGameStarted GameStatus 1

# Clear Signs
execute positioned 17 36 15 run function gc:states/2_lobby/place/place_menu_signs

# Modify Odds Difficulties
  # Easy
  execute if score difficulty Settings matches 1 run function gc:states/1_factory_reset/set/set_scores_characters_odds_easy
  execute if score difficulty Settings matches 1 run function gc:states/1_factory_reset/set/set_scores_expedition_odds_easy
  # Normal
    # Default Values
  # Hard
  execute if score difficulty Settings matches 3 run function gc:states/1_factory_reset/set/set_scores_characters_odds_hard
  execute if score difficulty Settings matches 3 run function gc:states/1_factory_reset/set/set_scores_expedition_odds_hard

# Clear Lobby Showcase
kill @e[type=armor_stand,tag=lobbyItem]

# Proceed
schedule function gc:states/inc_state 1t replace