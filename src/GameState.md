# Game State

The client game state is stored locally and globally in `store.state`. There are a lot of properties in the store state, however you don't need to know all of them. This section will cover what should be most valuable.

When referring to a property the `store.state` is assumed as the way to reference it.

For example to get to the character's current equipment

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
