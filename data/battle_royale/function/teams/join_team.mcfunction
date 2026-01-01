$team join $(team) @s
tag @s add br.has_team
$tellraw @a [{"selector":"@s","color":"$(color)"},{"text":" joined ","color":"white"},{"text":"$(team_name)","color":"$(color)"}]
