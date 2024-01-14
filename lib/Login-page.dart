import 'package:assingnment14/Home_screen.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Login_page extends StatefulWidget {
  const Login_page({super.key});

  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  TextEditingController controllername = new TextEditingController();
  var messege = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            textAlign: TextAlign.right,
            "--نام خود را بنویس--",
            style: TextStyle(fontSize: 30,color: Colors.black),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: TextField(
              textAlign: TextAlign.right,
              controller: controllername,
              decoration: InputDecoration(
                  hintText: "نام خود را در اینججا بنویس",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          Text(
            messege,
            style: TextStyle(color: Colors.red, fontSize: 15),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              if (controllername.text.length > 0) {
                Alert(
                  context: context,
                  type: AlertType.success,
                  title: "خوش آمدی ${controllername.text}  جان ",
                  desc: "برای شروع  روی دکمه زیر کلیک کن",
                  buttons: [
                    DialogButton(
                      width: 120,
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Home_Screen(),
                              fullscreenDialog: true)),
                      child: Text(
                        " شروع کن",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    )
                  ],
                ).show();
              } else {
                setState(() {
                  messege += "     برای ورود باید نام خود را وارد کنی";
                });
              }
            },
            child: Text("بزن بریم",style: TextStyle(color: Colors.white,fontSize: 20),),
          )
        ],
      )),
    );
  }
}
