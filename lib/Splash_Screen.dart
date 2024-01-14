// import 'package:assingnment14/Login-page.dart';
import 'package:assingnment14/Login-page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _naigateToHome();
  }

  _naigateToHome() async {
    await Future.delayed(Duration(seconds: 3));

    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Login_page()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("لطفا صیر کنید",style: TextStyle(fontSize: 23),),
          Text('برنامه در حال آماده شدن است '),
          SizedBox(height: 30,),
          CircularProgressIndicator(
            color: Colors.blue,
          )
        ],
      ),
    ));
  }
}
