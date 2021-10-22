# Game State

The client game state is stored locally and globally in `store.state`. There are a lot of properties in the store state, however you don't need to know all of them. This section will cover what should be most valuable.

For example to get to the character's current equipment.

```javascript
const equipment = game.store.state.user.player.character.equipment;
```

## Properties

When referring to a property the `game.store.state` is assumed as the way to reference it. For example

```javascript
const inventory = game.store.state.user.player.inventory;
```

### user.player

---

#### user.player.inventory

The current inventory

Can also use `store.getInventory()`

#### user.player.character

Get all of the character's data

Can also use `store.getCharacter()`

#### user.player.activity

The current activity of the player (ex "battle" | "scavenge" | "repair" | "build" | null)

### battle

---

This property will contain data about the current battle you are participating in. It will be `null` otherwise.

#### battle.level

The current level/difficulty of the battle

#### battle.size

This array contains two items `[width, height]`

#### battle.expiration

The timestamp at which the battle will expire

#### battle.participants

The timestamp at which the battle will expire

#### battle.participants

This array will have a length of `width x height` and contain information about each character participating in the battle. The index of the player is reletive to their position in the battle grid.

#### battle.participants

This array contains information about every other character not directory participating in the battle.

#### battle.enemies

This array contains information about the active enemies in the battle.

#### battle.reserveEnemies

This array contains information about enemies not currently active in the battle.

#### battle.scavengers

This array contains information about the players that are currently scavenging.

#### battle.itemsAvailable

The number of items available to be scavenged.

#### battle.healSlots

This array contains a list of indexes that are targes for being healed.

### town

---

#### town.hp

The current HP of the town.

#### town.maxHp

The max HP of the town.

#### town.hp

The current HP of the town.

#### town.lastDamage

The most recent amount of damage the town received.

#### town.lastRepair

The most recent amount of repairing the town received.

#### town.repairers

This array contains the players currently repairing the town

#### town.builders

This object contains a property for each building and an array of the players participating in building it.

#### town.buildings

This object contains a property for each building and number representing its level.

#### town.buildingsExp

This object contains a property for each building and number representing its experience to the next level.

## Functions

The store provides some helper functions for getting to specific pieces of data

[getPlayer](#getplayer)

[getInventory](#getinventory)

[getCharacter](#getcharacter)

[getDifficulty](#getdifficulty)

### getPlayer

Get the player object

```javascript
const player = game.store.getPlayer();
```

### getInventory

Get the inventory object

```javascript
const inventory = game.store.getInventory();
```

### getCharacter

Get the character object

```javascript
const character = game.store.getCharacter();
```

### getDifficulty

Get the current game difficulty

```javascript
const difficulty = game.store.getDifficulty();
```
