scoreboard players remove #countdown br.timer 1
effect give @a resistance 1 255 true

# Countdown titles
execute if score #countdown br.timer matches 10 run title @a title {"text":"10","color":"red","bold":true}
execute if score #countdown br.timer matches 10 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 0.5

execute if score #countdown br.timer matches 5 run title @a title {"text":"5","color":"gold","bold":true}
execute if score #countdown br.timer matches 5 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 0.8

execute if score #countdown br.timer matches 4 run title @a title {"text":"4","color":"gold","bold":true}
execute if score #countdown br.timer matches 4 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 0.9

execute if score #countdown br.timer matches 3 run title @a title {"text":"3","color":"yellow","bold":true}
execute if score #countdown br.timer matches 3 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1.0

execute if score #countdown br.timer matches 2 run title @a title {"text":"2","color":"yellow","bold":true}
execute if score #countdown br.timer matches 2 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1.1

execute if score #countdown br.timer matches 1 run title @a title {"text":"1","color":"green","bold":true}
execute if score #countdown br.timer matches 1 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1.2

execute if score #countdown br.timer matches 0 run function battle_royale:states/start_active
