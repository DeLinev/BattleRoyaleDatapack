# Set minimum players required to start a match
# Usage: /scoreboard players set #input br.temp <value>
#        /function battle_royale:config/set/min_players

execute unless score #input br.temp matches 1.. run tellraw @s [{"text":"[","color":"gray"},{"text":"BR Config","color":"red"},{"text":"] ","color":"gray"},{"text":"Set #input br.temp to a positive value first.","color":"red"}]
execute unless score #input br.temp matches 1.. run return 0

scoreboard players operation #min_players br.config = #input br.temp
tellraw @s [{"text":"[","color":"gray"},{"text":"BR Config","color":"gold"},{"text":"] ","color":"gray"},{"text":"min_players set to ","color":"green"},{"score":{"name":"#min_players","objective":"br.config"},"color":"yellow"}]
scoreboard players reset #input br.temp
