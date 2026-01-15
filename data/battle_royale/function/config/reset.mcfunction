# Reset all config values to defaults (overwrites existing values)

scoreboard players set #border_initial br.config 3000
scoreboard players set #border_min br.config 100
scoreboard players set #shrink_time br.config 120
scoreboard players set #wait_time br.config 300
scoreboard players set #shrink_step br.config 6
scoreboard players set #countdown_time br.config 10
scoreboard players set #ending_time br.config 30
scoreboard players set #min_players br.config 2

tellraw @a[tag=br.admin] [{"text":"[","color":"gray"},{"text":"BR Config","color":"gold"},{"text":"] ","color":"gray"},{"text":"All settings reset to defaults.","color":"green"}]

execute store result storage br:temp size int 1 run scoreboard players get #border_initial br.config
function battle_royale:game/border/init with storage br:temp