---
name: cal
description: Show calendar events (defaults to today)
allowed-tools: Bash
---

Run `idag` with the optional argument provided by the user.

If user provides an argument like "tomorrow", "week", or "month", run:
```bash
idag $ARGUMENTS
```

If no argument provided, default to today:
```bash
idag today
```

Present the events in a clean, readable format.
