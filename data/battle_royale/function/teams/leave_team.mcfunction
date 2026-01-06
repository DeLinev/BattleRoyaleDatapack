team leave @s
scoreboard players reset @s br.team
tag @s remove br.has_team
tellraw @a [{"selector":"@s","color": "dark_purple"},{"text":" left ", color: "white"},{"text":"his team","color": "dark_purple"}]