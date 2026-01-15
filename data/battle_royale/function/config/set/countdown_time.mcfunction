# Set countdown duration before match start (seconds)
# Usage: /scoreboard players set #input br.temp <value>
#        /function battle_royale:config/set/countdown_time

execute unless score #input br.temp matches 1.. run tellraw @s [{"text":"[","color":"gray"},{"text":"BR Config","color":"red"},{"text":"] ","color":"gray"},{"text":"Set #input br.temp to a positive value first.","color":"red"}]
execute unless score #input br.temp matches 1.. run return 0

scoreboard players operation #countdown_time br.config = #input br.temp
tellraw @s [{"text":"[","color":"gray"},{"text":"BR Config","color":"gold"},{"text":"] ","color":"gray"},{"text":"countdown_time set to ","color":"green"},{"score":{"name":"#countdown_time","objective":"br.config"},"color":"yellow"},{"text":" seconds","color":"dark_gray"}]
scoreboard players reset #input br.temp
