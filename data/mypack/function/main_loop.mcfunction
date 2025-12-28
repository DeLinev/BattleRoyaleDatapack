# IF GAME IS IN LOBBY MODE (0)
# execute if score #game_state globals matches 0 run function mypack:states/lobby_loop

# IF GAME IS RUNNING (1)
execute if score #game_state globals matches 1 run function mypack:states/game_loop