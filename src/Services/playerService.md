# Player Service

This service lets you interact with player specitic functionality, like the inventory.

## Functions

[discardItems](#discarditems)

[marketItem](#marketitem)

[unmarketItem](#unmarketitem)

[buyMarketItem](#buymarketitem)

[getMarketItems](#getmarketitems)

---

### discardItems

Discart the given item IDs

```javascript
// Get and discard all inventory items
const itemIds = game.store.getInventory().map((item) => {
  return item.id;
});

await game.playerService.discardItems(itemIds);
```

### marketItem

Send an item to the market with a given price

```javascript
// Send the first item in the inventory to the market
const item = game.store.getInventory()[0];

if (item) {
  await game.playerService.marketItem({ itemId: item.id, price: 1234 });
}
```

### unmarketItem

Remove an item from the market

```javascript
// Remove the first marked item from the market
const myMarketItems = await game.playerService.getMarketItems();
const item = myMarketItems[0];

if (item) {
  await game.playerService.unmarketItem(item.id);
}
```

### buyMarketItem

Buy an item from the market

```javascript
// Buy the first item in the market
const marketItems = await game.gameService.searchMarket();
const item = marketItems[0];

if (item) {
  await game.playerService.buyMarketItem(item.id);
}
```

### getMarketItems

Get a list of your marketed items

```javascript
const myMarketItems = await game.playerService.getMarketItems();
```
