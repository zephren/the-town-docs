# Game Service

## Functions

[getBattles](#getbattles)

[createBattle](#createbattle)

[joinBattle](#joinbattle)

[leaveBattle](#leavebattle)

[getBattle](#getbattle)

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
services.gameService.getBattles();
```

### createBattle

Craete a personal battle with the given difficulty. It cannot be less than 1 or more than the global difficulty.

```javascript
// Create the simplest battle
services.gameService.getBattles(1);
```

```javascript
const difficulty = store.getDifficulty();

// Create a battle of the current max difficulty
services.gameService.getBattles(difficulty);
```

### joinBattle

### leaveBattle

### getBattle

### selectBattleSlot

### selectReserve

### selectEnemy

### startScavenge

### stopScavenge

### startRepair

### stopRepair

### startBuild

### saveTraining

### endBattle

### searchMarket
