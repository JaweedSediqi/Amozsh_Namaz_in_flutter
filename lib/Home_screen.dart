import 'dart:async';

import 'package:assingnment14/Screens/Screen1.dart';
import 'package:assingnment14/Screens/Screen2.dart';
import 'package:assingnment14/Screens/Screen3.dart';
import 'package:assingnment14/Screens/Screen4.dart';
import 'package:assingnment14/Screens/Screen5.dart';
import 'package:assingnment14/Screens/Screen6.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

var names = [
  'آموزش وضو',
  'دیگر نماز ها ',
  'نماز های پنجگانه',
  ' رهنمایی',
  'موارد بیشتر ',
  'ماهیت نماز',
];
List listtilenames = [
  'مقدمه',
  'چشم انداز کلیدی',
  'االله اکیر',
  'به مردم سلام کردن و مزاحم را دور کردن',
  'ذات و قلب نماز',
  'سفری فراتر از حد ما',
  'اسرار سوره فاتحه',
  'کلید نجات',
  'بزرگترین دعا',
  'با قلب تلاوت کن',
];
var Links = [Screen1(), Screen2(), Screen3(), Screen4(), Screen5(), Screen6()];

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  int _currentIndex = 0;
  List<String> _imageList = [
    '1.jpg',
    '2.jpg',
    '3.jpg',
    // تصاویر دیگر اضافه کنید
  ];
  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (timer) {
      if (_currentIndex < _imageList.length - 1) {
        setState(() {
          _currentIndex++;
        });
      } else {
        setState(() {
          _currentIndex = 0;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('q1.png'),
                  ),
                  accountName: Text(""),
                  accountEmail: Text("")),
              ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Setting();
                    },
                  ));
                },
                title: Center(child: Text("تنظیمات")),
                trailing: Icon(Icons.settings),
              ),
              ListTile(

                onTap: () {
                  launch('www.email.com');
                },
                title: Center(child: Text("دیگر برنامه ها")),
                trailing: Icon(Icons.account_circle_rounded),
              ),
              ListTile(

                onTap: () {
                  launch('www.youtube.com');
                },
                title: Center(child: Text("  امتیاز دادن")),
                trailing: Icon(Icons.stacked_bar_chart),
              ),
              ListTile(
                onTap: () {
                  Share.share("a pice of text");
                },
                title: Center(child: Text("   ارسال برنامه")),
                trailing: Icon(Icons.share),
              ),
              ListTile(
                onTap: () {
                  Alert(
                    context: context,
                    type: AlertType.success,
                    title: "  استفاده کننده عزیز  ",
                    desc:
                        """يكي از استثناهاي واضح و آشكاري كه بيشتر برنامه هاي كاربردي تحت وب امروزه استفاده
مي كنند پروتكل لايه سوكتهاي امن )  ( Secure Sockets Layerمي باشد كه در بالاي HTTP
قرار گرفته است.  SSLدر اصل براي رمزگذاري لايه انتقال ساخته شده است بنابراين يك
ميانجي بين مشتري و سرويس دهنده نمي تواند متن اصلي ردو بدل شده را به راحتي بخواند.
مي توان گفت كه  SSLبه صورت يك لفافي براي  HTTPساخته شده است.  SSLبه صورت
ذاتي پايه و اساس درخواست-پاسخ ) ( Request-Responseپروتكل  HTTPرا تغيير نداده
است.  SSLبراي امنيت برنامه هاي كاربردي هيچ كاري انجام نداده است بلكه فقط استراق سمع
بين م""",
                    buttons: [
                      DialogButton(
                        width: 120,
                        onPressed: () => Navigator.pop(context),
                        child: Text(
                          "  تشکر",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      )
                    ],
                  ).show();
                },
                title: Center(child: Text("    سلب مسولیت")),
                trailing: Icon(Icons.stop_screen_share_outlined),
              ),
              ListTile(
                onTap: () => Navigator.pop(context),
                trailing: Icon(Icons.exit_to_app),
                title: Center(
                  child: Text("خروج"),
                ),
              )
            ],
          ),
        ),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Center(child: Text("آموزش نماز")),
        ),
        body: Column(
          children: [
            Expanded(
              child: SizedBox(
                height: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return Image.asset(
                      _imageList[_currentIndex],
                      fit: BoxFit.cover,
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: SizedBox(
                height: double.infinity,
                child: ListView.builder(
                  itemBuilder: (context, index) => ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50))),
                      onPressed: () {
                        switch (index) {
                          case 0:
                            Navigator.push(context,
                                MaterialPageRoute(builder: (c) => Links[0]));
                            break;
                          case 1:
                            Navigator.push(context,
                                MaterialPageRoute(builder: (c) => Links[1]));
                            break;
                          case 2:
                            Navigator.push(context,
                                MaterialPageRoute(builder: (c) => Links[2]));
                            break;
                          case 3:
                            Navigator.push(context,
                                MaterialPageRoute(builder: (c) => Links[3]));
                            break;
                          case 4:
                            Navigator.push(context,
                                MaterialPageRoute(builder: (c) => Links[4]));
                            break;
                          case 5:
                            Navigator.push(context,
                                MaterialPageRoute(builder: (c) => Links[5]));
                            break;
                          case 6:
                            Navigator.push(context,
                                MaterialPageRoute(builder: (c) => Links[6]));
                            break;
                        }
                      },
                      child: Text(names[index])),
                  itemCount: names.length,
                ),
              ),
            ),
          ],
        ));
    ;
  }
}

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('تنیظیمات'),
        ),
      ),
    );
  }
}
