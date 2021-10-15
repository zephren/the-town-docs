# Game State

The client game state is stored locally and globally in `store.state`. There are a lot of properties in the store state, however you don't need to know all of them. This section will cover what should be most valuable.

When referring to a property the `store.state` is assumed as the way to reference it.

For example to get to the character's current equipment

```JavaScript
store.state.user.player.character.equipment
```
