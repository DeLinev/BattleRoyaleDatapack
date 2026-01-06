# Check if already in a game
execute if score #state br.gamestate matches 1..3 run tellraw @a[tag=br.admin] [{"text":"[","color":"gray"},{"text":"ERROR","color":"red"},{"text":"] ","color":"gray"},{"text":"Game already in progress!","color":"red"}]
execute if score #state br.gamestate matches 1..3 run return fail

# Check minimum players
execute store result score #temp br.temp if entity @a[tag=br.has_team]
execute if score #temp br.temp < #min_players br.config run tellraw @a[tag=br.admin] [{"text":"[","color":"gray"},{"text":"ERROR","color":"red"},{"text":"] ","color":"gray"},{"text":"Not enough players! Need at least ","color":"red"},{"score":{"name":"#min_players","objective":"br.config"},"color":"yellow"},{"text":" players with teams.","color":"red"}]
execute if score #temp br.temp < #min_players br.config run return fail

scoreboard players set #has_other_team br.temp 0
execute as @a[tag=br.has_team,limit=1] store result score #first_team br.temp run scoreboard players get @s br.team
execute as @a[tag=br.has_team] unless score @s br.team = #first_team br.temp run scoreboard players set #has_other_team br.temp 1

execute if score #has_other_team br.temp matches 0 run tellraw @a[tag=br.admin] [{"text":"[","color":"gray"},{"text":"ERROR","color":"red"},{"text":"] ","color":"gray"},{"text":"All players with teams are on the same team!","color":"red"},{"text":" Need players on at least 2 different teams.","color":"red"}]
execute if score #has_other_team br.temp matches 0 run return fail

# Start the game
scoreboard players set #state br.gamestate 1
execute store result score #countdown br.timer run scoreboard players get #countdown_time br.config
scoreboard players set @a[tag=br.has_team] br.player_state 0
gamemode spectator @a[tag=!br.has_team]

tellraw @a [{"text":"[","color":"gray"},{"text":"Battle Royale","color":"gold","bold":true},{"text":"] ","color":"gray"},{"text":"Game starting! Get ready...","color":"green"}]

title @a title {"text":"GET READY!","color":"gold","bold":true}
title @a subtitle {"text":"The battle begins soon...","color":"yellow"}

playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 0.5
