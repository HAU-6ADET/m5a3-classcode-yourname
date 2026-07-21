// m5a3 - screenshot capture (teacher-canonical, NOT scored).
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:m5a3_dex_list/monster.dart';
import 'package:m5a3_dex_list/dex_list.dart';

import 'support/haudex_golden.dart';

void main() {
  setUpAll(loadHaudexFonts);

  testWidgets('capture: dex list', (tester) async {
    const monsters = [
      Monster(name: 'Emberling', type: 'fire', hp: 30, maxHp: 40),
      Monster(name: 'Aquaphin', type: 'water', hp: 18, maxHp: 25),
      Monster(name: 'Sprout', type: 'grass', hp: 12, maxHp: 20),
      Monster(name: 'Cinderpup', type: 'fire', hp: 22, maxHp: 30),
    ];
    await captureScreen(
      tester,
      Scaffold(
        appBar: AppBar(title: const Text('HAUDEX')),
        body: const DexList(monsters: monsters),
      ),
      name: 'list',
    );
  });
}
