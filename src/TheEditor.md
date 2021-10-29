# The Editor

## Making changes

Any changes made are immediately saved, but the script is not reloaded until requested.

## Files

"Files" are stored locally. Future enhancements will allow them to be stored with game data so that they may be transferred between devices.

Files may be added and deleted through the buttons on the right column.

Selecting a file will display it's code and allow it to be renamed via the button in the top right.

## Entry

A file must be selected as the entry point for the script, otherwise the script engine will not know where to start.

## Script state and actions

### Running

This is displayed if the script has successfully started and is running without encountering any errors.

### Stopped

This is displayed if the script has been manually stopped.

### Errored

This is displayed if the script encounters an error.

### Stop / Start

Either stop or start the script.

### Restart

Stops and then restarts the script.

## Error Messages

In order to try and make error traces more understandable, file code is wrapped in functions named by the file name, with spaces replaced by underscores. This enables proper line reporting for the evauated code.
