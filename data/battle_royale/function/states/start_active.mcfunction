# Transition to Active state
scoreboard players set #state br.gamestate 2

time set day

title @a title {"text":"FIGHT!","color":"red","bold":true}
title @a subtitle {"text":"May the best team win!","color":"gray"}

playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 1 1
playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 0.5 1.2

gamemode survival @a[scores={br.player_state=0}]
effect give @a regeneration 1 255 true
effect give @a saturation 1 255 true
clear @a

# Spread teams across the map (max_range = border_initial / 2, spread_dist = 50)
scoreboard players operation #temp br.temp = #border_initial br.config
scoreboard players operation #temp br.temp /= #2 br.const
execute store result storage br:temp max_range int 1 run scoreboard players get #temp br.temp
data modify storage br:temp spread_dist set value 50
function battle_royale:game/spread_players with storage br:temp

bossbar set br:border visible true
bossbar set br:border players @a

scoreboard players set #border_timer br.timer 0
scoreboard players operation #wait_timer br.timer = #wait_time br.config
bossbar set br:border name {"text":"⚠ The area will soon begin to shrink... ⚠","color":"dark_purple"}
bossbar set br:border color purple
bossbar set br:border value 100

scoreboard players reset * br.kills
scoreboard players reset * br.deaths
scoreboard objectives setdisplay list br.kills

scoreboard players set Alive br.players_count 0
scoreboard players set Dead br.players_count 0
execute as @a[scores={br.player_state=0}] run scoreboard players add Alive br.players_count 1
execute as @a[scores={br.player_state=1}] run scoreboard players add Dead br.players_count 1
scoreboard objectives setdisplay sidebar br.players_count
tellraw @a [{"text":"[","color":"gray"},{"text":"Battle Royale","color":"gold","bold":true},{"text":"] ","color":"gray"},{"text":"The game has begun! Last team standing wins!","color":"green"}]
