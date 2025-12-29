tellraw @a [{"text":"[","color":"gray"},{"text":"Battle Royale","color":"gold","bold":true},{"text":"] ","color":"gray"},{"text":"Datapack loaded! Version 1.0","color":"green"}]

# Scoreboards - Core System
# br.gamestate: 0=Lobby, 1=Starting, 2=Active, 3=Ending
scoreboard objectives add br.gamestate dummy "Game State"
scoreboard objectives add br.timer dummy "Timer"
scoreboard objectives add br.tick dummy "Tick Counter"
scoreboard objectives add br.config dummy "Config"
scoreboard objectives add br.temp dummy "Temp"
scoreboard objectives add br.const dummy "Constants"

# Player Stats
scoreboard objectives add br.kills playerKillCount "Kills"
scoreboard objectives add br.deaths deathCount "Deaths"
scoreboard objectives add br.team dummy "Team ID"
# br.player_state: 0=alive, 1=dead/spectating, 2=disconnected
scoreboard objectives add br.player_state dummy "Player State"
scoreboard objectives add br.display dummy {"text":"⚔ Battle Royale ⚔","color":"gold","bold":true}

# Constants
scoreboard players set #20 br.const 20
scoreboard players set #60 br.const 60
scoreboard players set #100 br.const 100
scoreboard players set #-1 br.const -1

# Config values
scoreboard players set #border_initial br.config 5000
scoreboard players set #border_min br.config 50
scoreboard players set #shrink_time br.config 300
scoreboard players set #countdown_time br.config 10
scoreboard players set #ending_time br.config 20
scoreboard players set #min_players br.config 2

# Teams
team add br.red "Red Team"
team modify br.red color red
team modify br.red friendlyFire false
team modify br.red seeFriendlyInvisibles true

team add br.blue "Blue Team"
team modify br.blue color blue
team modify br.blue friendlyFire false
team modify br.blue seeFriendlyInvisibles true

team add br.green "Green Team"
team modify br.green color green
team modify br.green friendlyFire false
team modify br.green seeFriendlyInvisibles true

team add br.yellow "Yellow Team"
team modify br.yellow color yellow
team modify br.yellow friendlyFire false
team modify br.yellow seeFriendlyInvisibles true

team add br.spectators "Spectators"
team modify br.spectators color gray
team modify br.spectators collisionRule never

# Bossbar
bossbar add br:border {"text":"Border Shrinking","color":"red"}
bossbar set br:border color red
bossbar set br:border style progress
bossbar set br:border max 100
bossbar set br:border value 100
bossbar set br:border visible false

function battle_royale:init

tellraw @a[tag=br.admin] [{"text":"[","color":"gray"},{"text":"BR Debug","color":"aqua"},{"text":"] ","color":"gray"},{"text":"All scoreboards initialized.","color":"white"}]
