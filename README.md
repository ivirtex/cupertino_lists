# cupertino_lists

cupertino_lists is an implementation of iOS-style lists (**grouped** and **inset grouped**).

**Warning:**  
This package probably will not be maintained after [#78732](https://github.com/flutter/flutter/pull/78732) gets merged.

The left side is native, and the right side is cupertino_lists.

![notes example](https://github.com/ivirtex/cupertino_lists/raw/master/readme_images/notes.png)
![reminders example](https://github.com/ivirtex/cupertino_lists/raw/master/readme_images/reminders.png)
![settings example](https://github.com/ivirtex/cupertino_lists/raw/master/readme_images/settings.png)

## Getting Started

Add the package to your pubspec.yaml:

```yaml
cupertino_lists: ^1.0.1
```

Import the library:

```dart
import 'package:cupertino_lists/cupertino_lists.dart';
```

In order to create a modern inset grouped iOS-style list, you need to use the `CupertinoListSection.insetGrouped()` widget and `CupertinoListTile.notched()` as its children:

```dart
  // Code from the reminders app example above.
  @override
  Widget build(BuildContext context) {
    return CupertinoListSection.insetGrouped(
      header: const Text('My Lists'),
      children: const <CupertinoListTile>[
        CupertinoListTile.notched(
          title: Text('Reminders'),
          leading: _DummyIcon(
            color: CupertinoColors.activeBlue,
            icon: CupertinoIcons.list_bullet,
          ),
          additionalInfo: Text('4'),
          trailing: CupertinoListTileChevron(),
        ),
        CupertinoListTile.notched(
          title: Text('Old Reminders'),
          leading: _DummyIcon(
            color: CupertinoColors.systemYellow,
            icon: CupertinoIcons.list_bullet,
          ),
          additionalInfo: Text('42'),
          trailing: CupertinoListTileChevron(),
        ),
        CupertinoListTile.notched(
          title: Text('Important'),
          leading: _DummyIcon(
            color: CupertinoColors.systemRed,
            icon: CupertinoIcons.list_bullet,
          ),
          additionalInfo: Text('2'),
          trailing: CupertinoListTileChevron(),
        ),
      ],
    );
  }
```

`CupertinoListTileChevron()` is a convenience widget that can be used to display an iOS-style chevron on the trailing side of a `CupertinoListTile`.

If you need old edge-to-edge style, simply use base constructors for `CupertinoListSection` and `CupertinoListTile`.

## Features, bugs and contributions

Feel free to contribute to this project.

Please file feature requests and bugs at the [issue tracker](https://github.com/ivirtex/cupertino_lists).
If you fixed a bug or implemented a feature by yourself, feel free to send a [pull request](https://github.com/ivirtex/cupertino_lists/pulls).
