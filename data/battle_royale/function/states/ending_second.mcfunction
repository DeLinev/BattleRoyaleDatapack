scoreboard players remove #ending_timer br.timer 1

title @a actionbar [{"text":"Returning to lobby in ","color":"gray"},{"score":{"name":"#ending_timer","objective":"br.timer"},"color":"gold","bold":true},{"text":" seconds...","color":"gray"}]

execute if score #ending_timer br.timer matches 0 run function battle_royale:admin/return_to_lobby
