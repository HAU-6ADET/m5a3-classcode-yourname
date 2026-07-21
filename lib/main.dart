import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

import 'monster.dart';
import 'dex_list.dart';

const _monsters = [
  Monster(name: 'Emberling', type: 'fire', hp: 30, maxHp: 40),
  Monster(name: 'Aquaphin', type: 'water', hp: 18, maxHp: 25),
  Monster(name: 'Sprout', type: 'grass', hp: 12, maxHp: 20),
  Monster(name: 'Cinderpup', type: 'fire', hp: 22, maxHp: 30),
];

// Entry point. Run it to scroll your Dex. Your work is in `dex_list.dart`.
void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const HaudexApp(),
    ),
  );
}

class HaudexApp extends StatelessWidget {
  const HaudexApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: Scaffold(
        appBar: AppBar(title: const Text('HAUDEX')),
        body: const DexList(monsters: _monsters),
      ),
    );
  }
}
