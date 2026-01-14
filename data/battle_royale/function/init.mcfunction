# Reset game to LOBBY state
scoreboard players set #state br.gamestate 0

# Load lobby structure
forceload add -17 -17 15 16
place template battle_royale:lobby_base_v2 -17 200 -17
kill @e[type=item]

scoreboard players set #ticks br.tick 0
scoreboard players set #countdown br.timer 0
scoreboard players set #border_timer br.timer 0
scoreboard players set #wait_timer br.timer 0
scoreboard players set #ending_timer br.timer 0
scoreboard players set #teams_count br.teams 2
scoreboard players set Alive br.players_count 0
scoreboard players set Dead br.players_count 0
scoreboard players set #temp br.temp 0
scoreboard players set #alive_teams br.temp 0
scoreboard players set #alive_players br.temp 0
scoreboard players set #ending_init br.temp 0

scoreboard players reset * br.kills
scoreboard players reset * br.deaths
scoreboard players reset * br.team
scoreboard players reset * br.player_state

team leave @a
clear @a[tag=!br.admin]
spawnpoint @a 0 200 0
effect give @a regeneration 1 255 true
effect give @a saturation 1 255 true
gamemode creative @a[tag=br.admin]

scoreboard players set #team_red br.temp 0
scoreboard players set #team_blue br.temp 0
scoreboard players set #team_green br.temp 0
scoreboard players set #team_yellow br.temp 0

# Reset world border
execute store result storage br:temp size int 1 run scoreboard players get #border_initial br.config
function battle_royale:game/border/init with storage br:temp

bossbar set br:border visible false
bossbar set br:border value 100

scoreboard objectives setdisplay sidebar

title @a clear
title @a reset

gamemode adventure @a[gamemode=!creative]

# tag @a remove br.alive
tag @a remove br.dead
tag @a remove br.winner
tag @a remove br.has_team

tellraw @a [{"text":"[","color":"gray"},{"text":"Battle Royale","color":"gold","bold":true},{"text":"] ","color":"gray"},{"text":"Game reset! Returned to lobby.","color":"aqua"}]
playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1 1.5
