execute if score state GameStatus matches 1 run function mc:states/stages/1_factory_reset/init_state
execute if score state GameStatus matches 2 run function mc:states/stages/2_lobby/init_state
execute if score state GameStatus matches 3 run function mc:states/stages/3_start_request/init_state
execute if score state GameStatus matches 4 run function mc:states/stages/4_setup/init_state

# execute if score state GameStatus matches 4 run function mc:states/stages/5_atomic_drill/init_state
# execute if score state GameStatus matches 4 run function mc:states/stages/6_scavenge/init_state
# execute if score state GameStatus matches 4 run function mc:states/stages/7_bunker/init_state