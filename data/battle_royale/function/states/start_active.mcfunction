# Transition to Active state
scoreboard players set #state br.gamestate 2

title @a title {"text":"FIGHT!","color":"red","bold":true}
title @a subtitle {"text":"May the best team win!","color":"gray"}

playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 1 1
playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 0.5 1.2

gamemode survival @a[tag=br.alive]

# Spread teams across the map
spreadplayers 0 0 100 2000 true @a[tag=br.alive]

bossbar set br:border visible true
bossbar set br:border players @a
bossbar set br:border name {"text":"⚠ Border Shrinking ⚠","color":"red"}

execute store result score #border_timer br.timer run scoreboard players get #shrink_time br.config

scoreboard objectives setdisplay sidebar br.kills

tellraw @a [{"text":"[","color":"gray"},{"text":"Battle Royale","color":"gold","bold":true},{"text":"] ","color":"gray"},{"text":"The game has begun! Last team standing wins!","color":"green"}]
