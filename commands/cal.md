---
description: Show calendar events from macOS Calendar
allowed-tools: Bash
---

# Calendar Command

Query macOS Calendar and show the user their events.

## Arguments

The user can provide an optional range argument: `$ARGUMENTS`

Supported ranges:
- `today` (default) - Today's events
- `tomorrow` - Tomorrow's events
- `week` - Next 7 days
- `month` - Next 30 days

## Instructions

1. Run the `idag` command with the appropriate range:

```bash
idag $ARGUMENTS
```

If no arguments provided, run `idag` (defaults to today).

2. Present the events in a clean, readable format to the user.

3. If there are no events, let the user know their calendar is clear.

4. If there's an error about calendar access, tell the user to grant permissions in:
   **System Settings > Privacy & Security > Calendars**
