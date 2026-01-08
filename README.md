# idag

A modern CLI to query macOS Calendar from the terminal. Uses EventKit directly - no dependencies, no hacks.

*"idag" is Swedish for "today"*

## Installation

### Homebrew

```bash
brew install hamedmp/tap/idag
```

### From source

```bash
git clone https://github.com/hamedmp/idag.git
cd idag
swift build -c release
sudo cp .build/release/idag /usr/local/bin/
```

## Usage

```bash
idag                 # Today's events
idag today           # Today's events
idag tomorrow        # Tomorrow's events
idag week            # Next 7 days
idag month           # Next 30 days
idag week --json     # Output as JSON
```

## Output

```
Today - Thursday, January 8, 2026
--------------------------------------------------
Thursday, Jan 8
  09:00 - 09:30 | Team standup [Work]
  14:00 - 15:00 | Client call [Work]
  18:00 - 19:00 | Gym [Personal]
```

## JSON Output

Use `--json` for machine-readable output:

```json
[
  {
    "title": "Team standup",
    "calendar": "Work",
    "isAllDay": false,
    "startDate": "2026-01-08T09:00:00+01:00",
    "endDate": "2026-01-08T09:30:00+01:00"
  }
]
```

## Permissions

On first run, macOS will prompt for calendar access. You can also grant it manually:

**System Settings > Privacy & Security > Calendars**

## Why?

icalBuddy hasn't been updated since 2012. This is a modern replacement using Swift and EventKit - the same framework Calendar.app uses.

## Requirements

- macOS 13.0+
- Swift 5.9+

## License

MIT
