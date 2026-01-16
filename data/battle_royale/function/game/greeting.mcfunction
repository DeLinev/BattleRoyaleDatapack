# Mark player as joined to prevent repeat
scoreboard players set @s br.joined 1

playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1

tellraw @s {"text":"","extra":[\
  {"text":"═══════════════════════════════","color":"gold"}\
]}
tellraw @s {"text":"","extra":[\
  {"text":"   ⚔ ","color":"red"},\
  {"text":"BATTLE ROYALE","color":"gold","bold":true},\
  {"text":" ⚔","color":"red"}\
]}
tellraw @s {"text":"","extra":[\
  {"text":"═══════════════════════════════","color":"gold"}\
]}
tellraw @s ""
tellraw @s {"text":"","extra":[\
  {"text":"» ","color":"yellow"},\
  {"text":"How to play:","color":"aqua","bold":true}\
]}
tellraw @s {"text":"","extra":[\
  {"text":"  1. ","color":"gray"},\
  {"text":"Click a team sign ","color":"white"},\
  {"text":"to join a team","color":"gold"}\
]}
tellraw @s {"text":"","extra":[\
  {"text":"  2. ","color":"gray"},\
  {"text":"Wait for the game to start","color":"white"}\
]}
tellraw @s {"text":"","extra":[\
  {"text":"  3. ","color":"gray"},\
  {"text":"Survive and be the last one standing!","color":"white"}\
]}
tellraw @s ""
execute if entity @s[tag=br.admin] run \
tellraw @s {"text":"","extra":[\
  {"text":"» ","color":"yellow"},\
  {"text":"Admin Note: ","color":"red","bold":true},\
  {"text":"Use this command to start the game: ","color":"white"},\
  {"text":"/function battle_royale:admin/start_game","color":"aqua","click_event": {"action":"suggest_command","command":"/function battle_royale:admin/start_game"}}\
]} 
tellraw @s ""
tellraw @s {"text":"","extra":[\
  {"text":"» ","color":"yellow"},\
  {"text":"Good luck and have fun!","color":"green","italic":true}\
]}
tellraw @s {"text":"","extra":[\
  {"text":"═══════════════════════════════","color":"gold"}\
]}
