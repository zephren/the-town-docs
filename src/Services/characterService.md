# Character Service

This service allows you to perform character specific actions.

## Functions

[equip](#equip)

[unequip](#unequip)

---

### equip

Equip an item

```javascript
// Get the first item in the inventory
const item = game.store.getInventory()[0];

game.gameService.equip(item.id);
```

### unequip

Unequip an item

```javascript
const equipment = game.store.getCharacter().equipment;

// Unequip the first item in the list of equipment
game.gameService.unequip(equipment[0]);
```
