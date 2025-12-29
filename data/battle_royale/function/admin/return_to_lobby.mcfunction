tp @a 0 201 0
function battle_royale:init

tellraw @a [{"text":"[","color":"gray"},{"text":"Battle Royale","color":"gold","bold":true},{"text":"] ","color":"gray"},{"text":"Join a team to play again!","color":"aqua"}]
playsound minecraft:block.note_block.bell master @a ~ ~ ~ 1 1
