import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Tasbeh extends StatefulWidget {
  const Tasbeh({super.key});

  @override
  State<Tasbeh> createState() => _TasbehState();
}

class _TasbehState extends State<Tasbeh> {
  var counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Center(child: Text("تسبیح")),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${counter}',
              style: TextStyle(fontSize: 30),
            )
          ],
        ),
      ),
    );
  }
}
