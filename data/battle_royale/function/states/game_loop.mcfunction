execute as @a[x=0,y=200,z=0,distance=..20,tag=br.has_team,scores={br.player_state=0}] run function battle_royale:game/spread_players with storage br:temp

# Detect player deaths 
execute as @a[scores={br.deaths=1..,br.player_state=0..}] run function battle_royale:game/handle_death

# Check win condition every second
execute if score #ticks br.tick matches 0 run function battle_royale:game/check_win
execute if score #ticks br.tick matches 0 run function battle_royale:game/border/tick