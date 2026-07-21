# Module 5 - Activity 3 - The Dex list (Flutter)

[![Made with Claude](https://img.shields.io/badge/Made_with-Claude-D97757?logo=anthropic&logoColor=white)](https://tjakoen.github.io/notes/ten-times-zero)
![Flutter](https://img.shields.io/badge/Flutter-02569B?logo=flutter&logoColor=white)

Show a whole, scrolling list of monsters - the core of a Pokedex.

## Build this

In `lib/dex_list.dart`, `DexList` is given a `List<Monster>`. Build a `ListView`
(use `ListView.builder`) with one `ListTile` per monster: the title is the name,
the subtitle is the type. The row count must come from the data, not be
hard-coded.

Research: `ListView.builder` (`itemCount`, `itemBuilder`), `ListTile`.

## Run and check

```bash
flutter pub get
flutter run
flutter test
```

## Submit

Fill in `student.json`, commit, and push.
