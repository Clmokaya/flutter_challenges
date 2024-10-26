import 'package:flutter/material.dart';

const List<String> list = <String>[
  'Waterfall',
  'Ring a Ring',
  'The hunt',
  'Four'
];

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  bool vibrate = false;
  bool useDefaultSOund = false;
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Notification Sounds'),
            SwitchListTile.adaptive(
                value: vibrate,
                title: Text('Vibrate'),
                onChanged: (bool v) {
                  setState(() {
                    vibrate = v;
                  });
                }),
            Divider(),
            SwitchListTile.adaptive(
                title: Text('Default Sound'),
                value: useDefaultSOund,
                onChanged: (bool v) {
                  setState(() {
                    useDefaultSOund = v;
                  });
                }),
            Divider(),
            const SizedBox(
              height: 8,
            ),
            DropdownButton<String>(
              isExpanded: true,
              value: dropdownValue,
              borderRadius: BorderRadius.all(Radius.circular(12)),
              icon: const Icon(Icons.keyboard_arrow_down),
              elevation: 16,
              style: const TextStyle(color: Colors.deepPurple),
              underline: Container(
                height: 2,
                color: Colors.deepPurpleAccent,
              ),
              onChanged: (String? value) {
                // This is called when the user selects an item.
                setState(() {
                  dropdownValue = value!;
                });
              },
              items: list.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            const SizedBox(
              height: 8,
            ),
          ],
        ),
      )),
    );
  }
}
