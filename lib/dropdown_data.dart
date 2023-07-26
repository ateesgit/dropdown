import 'package:dropdown/dropdown_view.dart';
import 'package:flutter/material.dart';

class MyHomePageDrop extends StatefulWidget {
  @override
  _MyHomePageDropState createState() => _MyHomePageDropState();
}

class _MyHomePageDropState extends State<MyHomePageDrop> {
  List<String> selectedOptions = [];

  List<String> options = [
    'Apple',
    'Orange',
    'Option 3',
    'Option 4',
    'Option 5',
    'Option 6',
    'Option 7',
    'Option 8',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dropdown Button Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton<String>(
              value: selectedOptions.isNotEmpty ? selectedOptions[0] : null,
              onChanged: (value) {
                setState(() {
                  selectedOptions.clear();
                  selectedOptions.add(value!);
                });
              },
              items: options.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NextScreen(selectedOptions: selectedOptions),
                  ),
                );
              },
              child: Text('Save and Next'),
            ),
          ],
        ),
      ),
    );
  }
}

