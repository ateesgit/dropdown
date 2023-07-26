import 'package:dropdown/dropdown_data.dart';
import 'package:dropdown/dropdown_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dropdown Button Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePageDrop(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String selectedOption = 'Option 1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dropdown Button Example'),
      ),
      body: Column(
        children: [
          Center(
            child: DropdownButton<String>(
              value: selectedOption,
              onChanged: (value) {
                setState(() {
                  selectedOption = value!;
                });
              },
              items: <String>[
                'Option 1',
                'Option 2',
                'Option 3',
                'Option 4',
                'Option 5',
                'Option 6',
                'Option 7',
                'Option 8',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
           SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
              /*   Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DropdownView(selectedOption: selectedOption),
                  ),
                ); */
              },
              child: Text('Save and Next'),
            ),
        ],
      ),
     
    );
  }
}
