# Game State

The client game state is stored locally and globally in `store.state`. There are a lot of properties in the store state, however you don't need to know all of them. This section will cover what should be most valuable.

For example to get to the character's current equipment.

```javascript
const equipment = game.store.state.user.player.character.equipment;
```

## Properties

When referring to a property the `store.state` is assumed as the way to reference it.

### user.player

#### user.player.inventory

The current inventory

Can also use `store.getInventory()`

#### user.player.character

Get all of the character's data

Can also use `store.getCharacter()`

#### user.player.activity

The current activity of the player (ex "battle" | "scavenge" | "repair" | "build" | null)

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
