# Starting loop (State 1)
execute if score #ticks br.tick matches 0 run function battle_royale:states/starting_second

# Particle effects during countdown
execute if score #countdown br.timer matches 1..5 as @a at @s run particle minecraft:end_rod ~ ~2 ~ 0.5 0.5 0.5 0.02 3
