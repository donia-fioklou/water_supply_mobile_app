import 'package:flutter/material.dart';

class CommandePage extends StatelessWidget {
  const CommandePage({super.key});

  @override
  Widget build(BuildContext context) {
    final listTiles = <Widget>[
      ListTile(
        title: const Text('Tile5: tile with badge'),
        subtitle: const Text('(This uses the badges package)'),
      ),
      const Divider(),
    ];
    // Directly returning a list of widgets is not common practice.
    // People usually use ListView.builder, c.f. "ListView.builder" example.
    // Here we mainly demostrate ListTile.
    return ListView(children: listTiles);
  }
}
