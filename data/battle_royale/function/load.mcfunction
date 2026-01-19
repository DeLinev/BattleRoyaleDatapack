tellraw @a [{"text":"[","color":"gray"},{"text":"Battle Royale","color":"gold","bold":true},{"text":"] ","color":"gray"},{"text":"Datapack loaded!","color":"green"}]
tellraw @a[tag=!br.admin] [\
{"text":"[","color":"gray"},\
{"text":"Battle Royale","color":"gold","bold":true},\
{"text":"] ","color":"gray"},\
{"text":"If you are the world owner, run ","color":"yellow"},\
{"text":"/tag @s add br.admin","color":"aqua","click_event": {"action":"suggest_command","command":"/tag @s add br.admin"}},\
{"text":" to access admin settings.","color":"yellow"}]
tellraw @a[tag=br.admin] ""
tellraw @a[tag=br.admin] {"text":"","extra":[\
  {"text":"» ","color":"yellow"},\
  {"text":"Admin Note: ","color":"red","bold":true},\
  {"text":"Use this command to start the game: ","color":"white"},\
  {"text":"/function battle_royale:admin/start_game","color":"aqua","click_event": {"action":"suggest_command","command":"/function battle_royale:admin/start_game"}}\
]} 
tellraw @a[tag=br.admin] ""

# Scoreboards - Core System
# br.gamestate: 0=Lobby, 1=Starting, 2=Active, 3=Ending
scoreboard objectives add br.gamestate dummy "Game State"
scoreboard objectives add br.teams dummy "Teams Count"
scoreboard objectives add br.timer dummy "Timer"
scoreboard objectives add br.tick dummy "Tick Counter"
scoreboard objectives add br.config dummy "Config"
scoreboard objectives add br.temp dummy "Temp"
scoreboard objectives add br.const dummy "Constants"
scoreboard objectives add br.players_count dummy "Players"
scoreboard objectives add br.joined custom:minecraft.leave_game

gamerule locator_bar false

# Player Stats
scoreboard objectives add br.kills playerKillCount "Kills"
scoreboard objectives add br.deaths deathCount "Deaths"
scoreboard objectives add br.team dummy "Team ID"
# br.player_state: 0=alive, 1=dead/spectating, 2=disconnected
scoreboard objectives add br.player_state dummy "Player State"
scoreboard objectives add br.display dummy {"text":"⚔ Battle Royale ⚔","color":"gold","bold":true}

# Constants
scoreboard players set #2 br.const 2
scoreboard players set #20 br.const 20
scoreboard players set #60 br.const 60
scoreboard players set #100 br.const 100
scoreboard players set #-1 br.const -1

# Config values (initialized with persistence - won't overwrite existing)
function battle_royale:config/init
summon marker -14 201 -10 {Tags:["br.anchor_block"]}

# Teams
function battle_royale:teams/remove_all_teams

team add br.green "Green Team"
team modify br.green color green
team modify br.green friendlyFire false
team modify br.green seeFriendlyInvisibles true

team add br.yellow "Yellow Team"
team modify br.yellow color yellow
team modify br.yellow friendlyFire false
team modify br.yellow seeFriendlyInvisibles true

# Bossbar
bossbar add br:border {"text":"⚠ The area will soon begin to shrink... ⚠", color: "dark_purple"}
bossbar set br:border color purple
bossbar set br:border style progress
bossbar set br:border max 100
bossbar set br:border value 100
bossbar set br:border visible false

function battle_royale:init

execute as @a[tag=br.admin] run function battle_royale:config/show
