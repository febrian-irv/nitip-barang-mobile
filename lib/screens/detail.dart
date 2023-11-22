import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  // Declare a field to store the received data
  final List<String> receivedData;

  // Constructor to receive the data
  SecondPage(this.receivedData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Received Data:'),
            // Display the received data in a ListView
            ListView.builder(
              shrinkWrap: true,
              itemCount: receivedData.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(receivedData[index]),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}