import 'package:flutter/material.dart';
import 'package:nsc/transaction_tile/transaction_tile_card.dart';

class TransactionTilePage extends StatelessWidget {
  const TransactionTilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transaction Tile'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 18),
            child: Text('List title'),
          ),
          // using list Tile
          ListTile(
            trailing: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '- KSH 1,500.00',
                  style: theme.textTheme.bodyLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  '12.59PM',
                )
              ],
            ),
            title: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Azuka Solutions',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 8,
                ),
                Text('4106722')
              ],
            ),
            leading: CircleAvatar(
              backgroundColor: Colors.greenAccent.shade100,
              child: const Text(
                'AS',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.greenAccent),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 18),
            child: Text('Custom Widget'),
          ),
          // custom widget
          TransactionTileCard(),
        ],
      ),
    );
  }
}
