import 'package:flutter/material.dart';

import 'monster.dart';

/// Module 5 - Activity 3 - The Dex list
///
/// Show a whole list of monsters that scrolls. `DexList` is given a
/// `List<Monster>` and must build a `ListView` (use `ListView.builder`) with
/// one `ListTile` per monster:
///
///   * the `ListTile` title is the monster's name,
///   * the subtitle shows its type.
///
/// The number of rows must come from the data - do not hard-code three.
///
/// Concepts to research: `ListView.builder` (`itemCount`, `itemBuilder`),
/// `ListTile` (`title`, `subtitle`), and indexing a list.
class DexList extends StatelessWidget {
  final List<Monster> monsters;

  const DexList({super.key, required this.monsters});

  @override
  Widget build(BuildContext context) {
    // TODO: return a ListView.builder with one ListTile per monster.
    return const Center(child: Text('TODO: build the list'));
  }
}
