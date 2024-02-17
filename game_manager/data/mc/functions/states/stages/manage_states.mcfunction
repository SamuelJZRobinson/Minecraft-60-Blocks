execute if score state GameStatus matches 1 run function mc:states/stages/1_factory_reset/init_state
execute if score state GameStatus matches 2 run function mc:states/stages/2_lobby/init_state
execute if score state GameStatus matches 3 run function mc:states/stages/3_start_request/init_state
execute if score state GameStatus matches 4 run function mc:states/stages/4_setup/init_state
# execute if score state GameStatus matches 5 run function mc:states/stages/5_drill/init_state
execute if score state GameStatus matches 6 run function mc:states/stages/6_explore/init_state
execute if score state GameStatus matches 7 run function mc:states/stages/7_scavenge/init_state
execute if score state GameStatus matches 8 run function mc:states/stages/8_bunker/init_state
execute if score state GameStatus matches 9 run function mc:states/stages/9_expedition/init_state
execute if score state GameStatus matches 10 run function mc:states/stages/10_ending/init_state