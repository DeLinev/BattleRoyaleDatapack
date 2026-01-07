function battle_royale:game/count_alive_teams

execute if score #alive_teams br.temp matches ..1 run function battle_royale:states/start_ending
execute if score #alive_teams br.temp matches 0 run tellraw @a [{"text":"[","color":"gray"},{"text":"Battle Royale","color":"gold","bold":true},{"text":"] ","color":"gray"},{"text":"No survivors! It's a draw!","color":"gray"}]