# Read First

## Fail safe

In the event that you happen to introduce an infinite loop into your script, or it is doing somthing else undesired, add `?scriptSaveMode=1` to the URL.

[http://thetowngame.com/?scriptSafeMode=1](http://thetowngame.com/?scriptSafeMode=1)

## Request Limits

Currently each player is limited to 120 requests every minute.

## Code structure and execution

Execution begins with the file specified in the editor. That file may be used to "require" other files using the `require` function. Here is an example usage:

```javascript
// Loads the configuration file to setup values for the rest of the scripts
require("configure");

// Load the file that sets up the different timers used to check and react to game state
const timers = require("timers");

// Start the timers
timers.start();
```
