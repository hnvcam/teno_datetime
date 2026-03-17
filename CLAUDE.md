# CLAUDE.md

## Project Overview

`teno_datetime` is a Dart library that provides DateTime extensions for convenient date/time manipulation. Inspired by Jiffy and Moment.js but does not introduce a new data type — everything works as extensions on `DateTime` and `Duration`.

**Repository:** https://github.com/hnvcam/teno_datetime
**Published on:** pub.dev as `teno_datetime`

## Architecture

- `lib/src/` — Core source files:
  - `constants.dart` — Unit enum and constants (e.g., first day of week)
  - `initialization.dart` — Locale initialization, sets first day of week per locale
  - `manipulation.dart` — `startOf`, `endOf`, `addUnit`, `diff` extensions on DateTime
  - `display.dart` — `timeAgo`, `timeIn`, `fromNow`, `format`, `toDurationString` extensions
  - `get_set.dart` — Getters/setters for date parts, `toWeeks` on Duration
  - `query.dart` — `isLeapYear`, `isSame`, `isBefore`, `isAfter` with unit granularity
  - `localization.dart` — Localization message lookup
- `lib/generated/` — Auto-generated intl message files (do not edit manually)
- `lib/l10n/` — ARB translation files (source of truth for translations)
- `lib/teno_datetime.dart` — Library barrel file

## Commands

```bash
# Install dependencies
dart pub get

# Run all tests
dart test

# Run a single test file
dart test test/manipulation_test.dart

# Static analysis
dart analyze

# Generate intl files (after editing .arb files)
dart pub global activate intl_translation
dart pub global run intl_translation:generate_from_arb --output-dir=lib/generated lib/src/localization.dart lib/l10n/*.arb
```

## Dependencies

- **intl** (^0.20.2) — Only runtime dependency. Used for locale-aware formatting and translations.
- **intl_translation** (dev) — For generating message files from ARB sources.
- **lints** (dev) — Dart recommended lint rules.
- **test** (dev) — Test framework.

## Code Conventions

- This is a **pure Dart library** (no Flutter dependency). Keep it that way.
- All public API is exposed via extensions on `DateTime` or `Duration` — do not introduce wrapper classes.
- Files in `lib/generated/` are auto-generated. Do not edit them manually; edit `lib/l10n/*.arb` files and regenerate.
- Analysis excludes `lib/generated/` and `README.md` (see `analysis_options.yaml`).
- Uses `package:lints/recommended.yaml` lint rules.

## Testing

- Tests are in `test/` with one file per source module.
- All tests must pass before committing: `dart test`
- Run `dart analyze` and ensure no errors (info-level lint warnings in test files are acceptable).

## CI

- GitHub Actions runs on push to `main`: installs deps, runs tests with coverage, uploads to Codecov.

## Localization

Supported locales: en, en_US, de, es, fr, pt, vi, ar.
To add a new locale:
1. Create `lib/l10n/intl_<locale>.arb`
2. Regenerate with `intl_translation:generate_from_arb`
3. Add locale handling in `lib/src/initialization.dart`
