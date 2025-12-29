# Place wool
$setblock ~ ~ ~$(offset) $(wool)

# Place sign on the wool
$setblock ~1 ~ ~$(offset) $(sign)[facing=east]{front_text:{messages:[\
  {"text":""},\
  {\
    "text":"[JOIN $(team_name)]",\
    "click_event":{\
      "action":"run_command",\
      "command":"execute as @s run function battle_royal:teams/join_team {team:\"$(team)\",team_name:\"$(team_name)\",color:\"$(color)\"}"\
    },\
    "bold":true,\
    "color":"$(color)"\
  },\
  {"text":""},\
  {"text":""}\
]}}
