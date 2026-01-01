# Check if already in a game
execute if score #state br.gamestate matches 1..3 run tellraw @a[tag=br.admin] [{"text":"[","color":"gray"},{"text":"BR Error","color":"red"},{"text":"] ","color":"gray"},{"text":"Game already in progress!","color":"red"}]
execute if score #state br.gamestate matches 1..3 run return fail

# Check minimum players
execute store result score #temp br.temp if entity @a[tag=br.has_team]
execute if score #temp br.temp < #min_players br.config run tellraw @a[tag=br.admin] [{"text":"[","color":"gray"},{"text":"BR Error","color":"red"},{"text":"] ","color":"gray"},{"text":"Not enough players! Need at least ","color":"red"},{"score":{"name":"#min_players","objective":"br.config"},"color":"yellow"},{"text":" players with teams.","color":"red"}]
execute if score #temp br.temp < #min_players br.config run return fail

# Start the game
scoreboard players set #state br.gamestate 1
execute store result score #countdown br.timer run scoreboard players get #countdown_time br.config
tag @a[tag=br.has_team] add br.alive
gamemode spectator @a[tag=!br.has_team]

tellraw @a [{"text":"[","color":"gray"},{"text":"Battle Royale","color":"gold","bold":true},{"text":"] ","color":"gray"},{"text":"Game starting! Get ready...","color":"green"}]

title @a title {"text":"GET READY!","color":"gold","bold":true}
title @a subtitle {"text":"The battle begins soon...","color":"yellow"}

playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 0.5
