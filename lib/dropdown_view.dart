/* import 'package:flutter/material.dart';

class DropdownView extends StatelessWidget {
  final List<dynamic> selectedOption;
  const DropdownView({super.key,required this.selectedOption});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Selected Options:"),
         SizedBox(height: 8),
         ListView.builder(
          itemCount: selectedOption.length,
          itemBuilder: (context,index){
            return ListTile(
              title: Text(selectedOption[index]),
            );
          },
          )
      ],
    );
  }
} */
import 'package:flutter/material.dart';

class NextScreen extends StatelessWidget {
  final List<String> selectedOptions;

  NextScreen({required this.selectedOptions});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Selected Options:'),
            SizedBox(height: 8),
            ListView.builder(
              shrinkWrap: true,
              itemCount: selectedOptions.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(selectedOptions[index]),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}