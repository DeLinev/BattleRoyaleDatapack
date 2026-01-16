execute as @a[x=0,y=201,z=0,distance=20..,tag=!br.admin] run tp @s 0 201 0
execute as @a unless score @s br.joined matches 1 run function battle_royale:game/greeting

gamemode adventure @a[gamemode=!adventure,tag=!br.admin]