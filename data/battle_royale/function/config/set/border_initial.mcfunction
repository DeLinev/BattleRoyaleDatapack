# Set initial world border size
# Usage: /scoreboard players set #input br.temp <value>
#        /function battle_royale:config/set/border_initial

execute unless score #input br.temp matches 1.. run tellraw @s [{"text":"[","color":"gray"},{"text":"BR Config","color":"red"},{"text":"] ","color":"gray"},{"text":"Set #input br.temp to a positive value first.","color":"red"}]
execute unless score #input br.temp matches 1.. run return 0

# Validate: must be greater than border_min
execute if score #input br.temp < #border_min br.config run tellraw @s [{"text":"[","color":"gray"},{"text":"BR Config","color":"red"},{"text":"] ","color":"gray"},{"text":"Value must be greater than border_min (","color":"red"},{"score":{"name":"#border_min","objective":"br.config"},"color":"yellow"},{"text":").","color":"red"}]
execute if score #input br.temp < #border_min br.config run return 0

scoreboard players operation #border_initial br.config = #input br.temp
tellraw @s [{"text":"[","color":"gray"},{"text":"BR Config","color":"gold"},{"text":"] ","color":"gray"},{"text":"border_initial set to ","color":"green"},{"score":{"name":"#border_initial","objective":"br.config"},"color":"yellow"}]
scoreboard players reset #input br.temp

execute store result storage br:temp size int 1 run scoreboard players get #border_initial br.config
function battle_royale:game/border/init with storage br:temp