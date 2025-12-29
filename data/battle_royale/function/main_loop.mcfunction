# Tick counter (resets at 20 for second-based timing)
scoreboard players add #ticks br.tick 1
execute if score #ticks br.tick matches 20.. run scoreboard players set #ticks br.tick 0

# State machine: 0=Lobby, 1=Starting, 2=Active, 3=Ending
execute if score #state br.gamestate matches 0 run function battle_royale:states/lobby_loop
execute if score #state br.gamestate matches 1 run function battle_royale:states/starting_loop
execute if score #state br.gamestate matches 2 run function battle_royale:states/game_loop
execute if score #state br.gamestate matches 3 run function battle_royale:states/ending_loop