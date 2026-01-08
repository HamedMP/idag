# macos-cal

A modern CLI tool to query macOS Calendar from the terminal. Uses EventKit directly - no dependencies, no hacks.

## Installation

### From source

```bash
git clone https://github.com/hamedmp/macos-cal.git
cd macos-cal
swift build -c release
cp .build/release/cal /usr/local/bin/
```

### With Homebrew (coming soon)

```bash
brew install macos-cal
```

## Usage

```bash
cal                 # Today's events
cal today           # Today's events
cal tomorrow        # Tomorrow's events
cal week            # Next 7 days
cal month           # Next 30 days
cal week --json     # Output as JSON
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

**System Settings > Privacy & Security > Calendars** - enable for Terminal

## Why?

icalBuddy hasn't been updated since 2012. This is a modern replacement using Swift and EventKit - the same framework Calendar.app uses.

## Requirements

- macOS 13.0+
- Swift 5.9+

## License

MIT
