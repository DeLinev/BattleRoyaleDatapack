# Ending loop (State 3)
execute if score #ending_init br.temp matches 0 run function battle_royale:states/ending_init

# Countdown to lobby (every second)
execute if score #ticks br.tick matches 0 run function battle_royale:states/ending_second

# Victory effects (every 10 ticks)
execute if score #ticks br.tick matches 0 as @a[tag=br.winner] at @s run particle minecraft:totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.1 10
execute if score #ticks br.tick matches 10 as @a[tag=br.winner] at @s run particle minecraft:firework ~ ~2 ~ 0.3 0.3 0.3 0.05 5
