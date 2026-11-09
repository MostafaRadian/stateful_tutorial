import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  new({super.key});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blueAccent),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$count"),
            Row(
              mainAxisAlignment: .center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    count++;
                    setState(() {});
                  },
                  child: Icon(Icons.add),
                ),
                SizedBox(width: 50),
                FloatingActionButton(
                  onPressed: () {
                    count--;
                    setState(() {});
                  },
                  child: Icon(Icons.remove),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
