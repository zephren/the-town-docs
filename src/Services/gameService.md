# Game Service

## Functions

[getBattles](#getbattles)

[createBattle](#createbattle)

[joinBattle](#joinbattle)

[leaveBattle](#leavebattle)

[selectBattleSlot](#selectbattleslot)

[selectReserve](#selectreserve)

[selectEnemy](#selectenemy)

[startScavenge](#startscavenge)

[stopScavenge](#stopscavenge)

[startRepair](#startrepair)

[stopRepair](#stoprepair)

[startBuild](#startbuild)

[saveTraining](#savetraining)

[endBattle](#endbattle)

[searchMarket](#searchmarket)

---

### getBattles

Get a list of all globally known battles

```javascript
await game.gameService.getBattles();
```

### createBattle

Craete a personal battle with the given difficulty. It cannot be less than 1 or more than the global difficulty.

```javascript
// Create the simplest battle
await game.gameService.createBattle(1);
```

```javascript
const difficulty = store.getDifficulty();

// Create a battle of the current max difficulty
game.gameService.createBattle(difficulty);
```

### joinBattle

Join the specified battle.

```javascript
const firstBattle = store.state.battles[0];

// Join the battle at the top of the list if there is one
if (firstBattle) {
  await game.gameService.joinBattle(firstBattle.id);
}
```

### leaveBattle

Leave the current battle.

```javascript
const { player } = store.state.user;

// Leave the battle if currently in one
if (player.battleId) {
  await game.gameService.leaveBattle();
}
```

### selectBattleSlot

Move to a battle slot to participate in the battle from.

```javascript
const { battle } = store.state;

// Try to select the last slot (back right)
if (battle) {
  const lastSlotIndex = battle.width * battle.height - 1;
  await game.gameService.selectBattleSlot(lastSlotIndex);
}
```

### selectReserve

Move to the reserve position outside of the battle.

```javascript
const { battle } = store.state;

if (battle) {
  await game.gameService.selectReserve();
}
```

### selectEnemy

Select the index of the enemy you want to target.

```javascript
const { battle } = store.state;

// Try to select the last slot (back right)
if (battle) {
  const lastEnemyIndex = battle.enemies.length - 1;
  await game.gameService.selectBattleSlot(lastEnemyIndex);
}
```

### startScavenge

Start scavenging the specified battle.

```javascript
const firstBattle = store.state.battles[0];

// Join the battle at the top of the list if there is one
if (firstBattle) {
  await game.gameService.startScavenge(firstBattle.id);
}
```

### stopScavenge

Stop scavenging the current battle.

```javascript
const { player } = store.state.user;

// Leave the battle if currently in one
if (player.battleId) {
  await game.gameService.stopScavenge();
}
```

### startRepair

Start repairing the town.

```javascript
await game.gameService.startRepair();
```

### stopRepair

Stop repairing the town.

```javascript
await game.gameService.stopRepair();
```

### startBuild

Start building the specified building.

```javascript
await game.gameService.startBuild();
```

### saveTraining

Save the training configuration. Must sum to no more than 1.0

```javascript
const statDistributions = {
  hp: 0.25,
  dmg: 0.25,
  def: 0.25,
  heal: 0.25,
};

await game.gameService.saveTraining(statDistributions);
```

### endBattle

End a personal battle.

```javascript
const { player } = store.state.user;

// Leave the battle if currently in one
if (player.battleId) {
  await game.gameService.endBattle();
}
```

### searchMarket

Search the market using the specified criteria. No criteria currently available, so this will return the first set of found items.

```javascript
await game.gameService.searchMarket();
```
