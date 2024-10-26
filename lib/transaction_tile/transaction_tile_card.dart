import 'package:flutter/material.dart';

class TransactionTileCard extends StatelessWidget {
  const TransactionTileCard({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.greenAccent.shade100,
            child: const Text(
              'AS',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.greenAccent),
            ),
          ),
          SizedBox(
            width: 8,
          ),
          const Expanded(
            flex: 2,
            child: Column(
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
          ),
          SizedBox(
            width: 8,
          ),
          Expanded(
            flex: 1,
            child: Column(
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
          )
        ],
      ),
    );
  }
}
