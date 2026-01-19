# ⚔️ Battle Royale Datapack

A Minecraft Java Edition datapack that adds a Battle Royale game mode.

## Features

- **Team-Based Gameplay** – Up to 4 teams (Red, Blue, Green, Yellow)
- **Shrinking World Border** – Configurable border that shrinks in phases, forcing players together
- **Lobby System** – Pre-built lobby structure with team selection
- **Automatic Win Detection** – Game ends when only one team remains
- **Configurable Settings** – Customize border size, shrink timing, countdown, and more

## Installation

1. Download the datapack folder
2. Place it in your world's `datapacks` folder:  
   `.minecraft/saves/<world_name>/datapacks/`
3. Run `/reload` in-game or restart the world

## Getting Started

### Become an Admin
```
/tag @s add br.admin
```

### View/Edit Configuration
```
/function battle_royale:config/show
```

### Start a Game
1. Players join teams by interacting with team blocks in the lobby (or use team commands)
2. Ensure at least 2 players are on different teams
3. Run: `/function battle_royale:admin/start_game`

### Force End a Game
```
/function battle_royale:admin/return_to_lobby
```

## Configuration Options

| Setting | Default | Description |
|---------|---------|-------------|
| `border_initial` | 3000 | Starting world border size (blocks) |
| `border_min` | 100 | Minimum border size (blocks) |
| `shrink_time` | 120 | Time to shrink border (seconds) |
| `wait_time` | 300 | Wait time between shrink phases (seconds) |
| `shrink_step` | 6 | The value by which the zone narrows every second during the shrinking phase |
| `countdown_time` | 10 | Pre-game countdown (seconds) |
| `ending_time` | 30 | Victory celebration time (seconds) |
| `min_players` | 2 | Minimum players required to start |

### Changing Settings

1. Set the input value:
   ```
   /scoreboard players set #input br.temp <value>
   ```
2. Apply to the setting:
   ```
   /function battle_royale:config/set/<setting_name>
   ```

Example – Set border to 5000 blocks:
```
/scoreboard players set #input br.temp 5000
/function battle_royale:config/set/border_initial
```

## Game States

| State | Description |
|-------|-------------|
| **Lobby** | Players select teams, waiting to start |
| **Starting** | Countdown before game begins |
| **Active** | Game in progress |
| **Ending** | Winner announced, returning to lobby |

## Requirements

- Minecraft Java Edition 1.21.4+ (Pack format 94)

## Notes
Feel free to use and modify the data pack for personal or server use.