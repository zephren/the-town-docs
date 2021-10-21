# Game Values

There are a number of configuration values that determine how game systems behave. These values can be helpful in making decisions within your script.

### Example usage

```javascript
game.gameValues.RECOVERY_TIMER_MODIFIER;
```

### List of value names

| Variable                        | Description                                                                                                                                           |
| ------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- |
| DIFFICULTY_ITEM_MODIFIER        | Item level = battle.level \* gameValues.DIFFICULTY_ITEM_MODIFIER                                                                                      |
| SCAVENGE_ITEM_AVAILABLE_BASE    | Base value for scavenge chance when drops are available, added to the chance based on the player skill level                                          |
| SCAVENGE_ITEM_UNAVAILABLE_BASE  | Base value for scavenge chance when drops are available, added to the chance based on the player skill level                                          |
| SCAVENGE_TICK_PERIOD            | How how many ticks before the scavenge process should execute                                                                                         |
| RECOVERY_TIMER_MODIFIER         | The number of ticks to recover after being knocked out. character.recoveryTimer += character.recoveryCounter \* gameValues.RECOVERY_TIMER_MODIFIER    |
| NON_BATTLE_HP_RECOVERY_MODIFIER | Amount of HP recovered when not in battle                                                                                                             |
| TOWN_RECOVERY_TIME_MODIFIER     | Number of ticks for the town rest after starting to loop                                                                                              |
| TOWN_BUILD_SKILL_LEVEL_MODIFIER | Base value for the expGrowth function. 1 / MathExtra.baseExpGrowth(gameValues.TOWN_BUILD_SKILL_LEVEL_MODIFIER, skillLevel);                           |
| TOWN_DAMAGE_MODIFIER            | Modifier for damage applied to the town for each enemy. townDamage += enemy.level \* gameValues.TOWN_DAMAGE_MODIFIER;                                 |
| TOWN_TICK_PERIOD                | How how many ticks before the town process should execute                                                                                             |
| TOWN_BASE_HP                    | Base HP for the town                                                                                                                                  |
| BATTLE_ENEMY_DEFEAT_NEW_ITEMS   | Number of itmes dropped when defeating an enemy                                                                                                       |
| BATTLE_DIFFICULTY_DIVISOR       | Used to determine the number of ticks to increase the battle difficulty (level). cycleTickCount / gameValues.BATTLE_DIFFICULTY_DIVISOR                |
| BATTLE_AUTO_CREATION_RATIO      | The minimum ratio of players to battle position slots required for a battle to be automatically created. True if the ratio is greater than this value |

TODO: create a script to generate the above names/descriptions
