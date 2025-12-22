# list_wheel_scroll_view_nls

A Flutter package that extends `ListWheelScrollView` to support `scrollDirection`, enabling horizontal scrolling.

## Usage

Simply use `ListWheelScrollViewX` instead of `ListWheelScrollView` and provide the `scrollDirection`.

```dart
ListWheelScrollViewX(
  scrollDirection: Axis.horizontal,
  itemExtent: 100,
  children: [
    // Your children here
  ],
)
```

## Features
- **Horizontal Scrolling**: Supports both vertical and horizontal layouts.
- **Physics**: Properly respects `physics` parameter.
- **Restoration**: Supports state restoration via `restorationId`.

