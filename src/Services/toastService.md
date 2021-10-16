# Toast Service

This service allows you to create the notifications that you see on the bottom right side of the window.

## Functions

[push](#push)

---

### push

Push a "toast" onto the stack with the desired notification text

```javascript
services.toastService.push({
  duration: 60000, // Stay visible for 1 minute (default: 5_000)
  text: "Hello toast!",
});
```
