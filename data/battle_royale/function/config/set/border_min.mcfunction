# Set minimum world border size
# Usage: /scoreboard players set #input br.temp <value>
#        /function battle_royale:config/set/border_min

execute unless score #input br.temp matches 1.. run tellraw @s [{"text":"[","color":"gray"},{"text":"BR Config","color":"red"},{"text":"] ","color":"gray"},{"text":"Set #input br.temp to a positive value first.","color":"red"}]
execute unless score #input br.temp matches 1.. run return 0

# Validate: must be less than border_initial
execute if score #input br.temp > #border_initial br.config run tellraw @s [{"text":"[","color":"gray"},{"text":"BR Config","color":"red"},{"text":"] ","color":"gray"},{"text":"Value must be less than border_initial (","color":"red"},{"score":{"name":"#border_initial","objective":"br.config"},"color":"yellow"},{"text":").","color":"red"}]
execute if score #input br.temp > #border_initial br.config run return 0

scoreboard players operation #border_min br.config = #input br.temp
tellraw @s [{"text":"[","color":"gray"},{"text":"BR Config","color":"gold"},{"text":"] ","color":"gray"},{"text":"border_min set to ","color":"green"},{"score":{"name":"#border_min","objective":"br.config"},"color":"yellow"}]
scoreboard players reset #input br.temp
