# Set number of shrinking phases
# Usage: /scoreboard players set #input br.temp <value>
#        /function battle_royale:config/set/shrink_step

execute unless score #input br.temp matches 1.. run tellraw @s [{"text":"[","color":"gray"},{"text":"BR Config","color":"red"},{"text":"] ","color":"gray"},{"text":"Set #input br.temp to a positive value first.","color":"red"}]
execute unless score #input br.temp matches 1.. run return 0

scoreboard players operation #shrink_step br.config = #input br.temp
tellraw @s [{"text":"[","color":"gray"},{"text":"BR Config","color":"gold"},{"text":"] ","color":"gray"},{"text":"shrink_step set to ","color":"green"},{"score":{"name":"#shrink_step","objective":"br.config"},"color":"yellow"}]
scoreboard players reset #input br.temp
