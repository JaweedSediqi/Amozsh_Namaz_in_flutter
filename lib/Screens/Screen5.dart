import 'package:assingnment14/Qusestion/Orginal.dart';
import 'package:assingnment14/Tasbih.dart';
import 'package:assingnment14/models/screens/home_screen.dart';
import 'package:flutter/material.dart';

class Screen5 extends StatefulWidget {
  const Screen5({super.key});

  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("  موارد بیشتر "),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HomeScreen();
                  },));
                },
                child: Text("برای ذخیره کردن متن اینخا بزن")),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return QuizlerApp();
                    },
                  ));
                },
                child: Text("برای سوال کردن  اینخا بزن")),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Tasbeh();
                    },
                  ));
                },
                child: Text("برای  تسببیح  اینخا بزن"))
          ],
        ),
      ),
    );
  }
}
