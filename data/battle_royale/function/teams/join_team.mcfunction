$team join $(team) @s
tag @s add br.has_team

# Set numeric team id for logic (br.team)
# 1 = Green, 2 = Yellow, 3 = Blue, 4 = Red
execute if entity @s[team=br.green] run scoreboard players set @s br.team 1
execute if entity @s[team=br.yellow] run scoreboard players set @s br.team 2
execute if entity @s[team=br.blue] run scoreboard players set @s br.team 3
execute if entity @s[team=br.red] run scoreboard players set @s br.team 4

$tellraw @a [{"selector":"@s","color":"$(color)"},{"text":" joined ","color":"white"},{"text":"$(team_name)","color":"$(color)"}]
