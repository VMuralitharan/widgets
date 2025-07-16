import 'package:flutter/material.dart';

void main() {
  runApp(secondapp());
}

class secondapp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return secondappstate();
  }
}

class secondappstate extends State<secondapp> {
  String displayText = "hi";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("change hi to bye")),
        body: Column(
          children: [
            Text(displayText),
            MaterialButton(
              onPressed: () {
                setState(() {
                  print(displayText);
                  displayText = "bye";
                  print(displayText);
                });
              },
              child: Text("click me"),
            ),
          ],
        ),
      ),
    );
  }
}
