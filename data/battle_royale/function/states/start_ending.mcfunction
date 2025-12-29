# Transition to Ending state
scoreboard players set #state br.gamestate 3
scoreboard players set #ending_init br.temp 0

tellraw @a [{"text":"[","color":"gray"},{"text":"Battle Royale","color":"gold","bold":true},{"text":"] ","color":"gray"},{"text":"Game over! A winner has emerged!","color":"yellow"}]
