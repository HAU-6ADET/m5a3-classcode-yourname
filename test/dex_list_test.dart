// m5a3 - The Dex list: behaviour checks (canonical overlay).
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:m5a3_dex_list/monster.dart';
import 'package:m5a3_dex_list/dex_list.dart';

const three = [
  Monster(name: 'Emberling', type: 'fire', hp: 30, maxHp: 40),
  Monster(name: 'Aquaphin', type: 'water', hp: 18, maxHp: 25),
  Monster(name: 'Sprout', type: 'grass', hp: 12, maxHp: 20),
];

Future<void> pump(WidgetTester tester, List<Monster> monsters) async {
  await tester
      .pumpWidget(MaterialApp(home: Scaffold(body: DexList(monsters: monsters))));
}

void main() {
  test('student.json is filled in', () {
    final info = jsonDecode(File('student.json').readAsStringSync())
        as Map<String, dynamic>;
    for (final field in [
      'classCode',
      'fullName',
      'studentNumber',
      'studentEmail',
      'personalEmail',
      'githubAccount',
    ]) {
      expect(info[field], isNotEmpty, reason: 'Set "$field" in student.json');
    }
  });

  group('DexList', () {
    testWidgets('renders a scrollable ListView', (tester) async {
      await pump(tester, three);
      expect(find.byType(ListView), findsOneWidget,
          reason: 'Build the list with a ListView (use ListView.builder).');
    });

    testWidgets('shows one ListTile per monster', (tester) async {
      await pump(tester, three);
      expect(find.byType(ListTile), findsNWidgets(3),
          reason: 'Render one ListTile per monster.');
    });

    testWidgets('shows each monster name and type', (tester) async {
      await pump(tester, three);
      for (final m in three) {
        expect(find.text(m.name), findsOneWidget);
      }
      expect(find.textContaining('fire'), findsWidgets,
          reason: 'Show each monster type (e.g. as the ListTile subtitle).');
    });

    testWidgets('adapts to a different list length', (tester) async {
      await pump(tester, three.take(2).toList());
      expect(find.byType(ListTile), findsNWidgets(2),
          reason: 'The list length must come from the data, not be hard-coded.');
    });
  });
}
