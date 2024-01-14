import 'package:assingnment14/Home_screen.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List names = [
    """ اول  4 رکعت سنت موکده  """,
    """  دوم 2 رکعت فرض   """,
    """  سوم 4 رکعت سنت موکده  """,
    """  چهارم 2 رکعت سنت موکده  """,
  ];
  var details = [
    """در اينجا فرض را بر آن گذاشتيم كه خواننده عزيز با پروتكل  HTTPو  HTMLآشنايي دارد و
مي خواهيم مختصر بسيار كوتاهي درباره  SSLبيان كنيم.
يكي از استثناهاي واضح و آشكاري كه بيشتر برنامه هاي كاربردي تحت وب امروزه استفاده
مي كنند پروتكل لايه سوكتهاي امن )  ( Secure Sockets Layerمي باشد كه در بالاي HTTP
قرار گرفته است.  SSLدر اصل براي رمزگذاري لايه انتقال ساخته شده است بنابراين يك
ميانجي بين مشتري و سرويس دهنده نمي تواند متن اصلي ردو بدل شده را به راحتي بخواند.
مي توان گفت كه  SSLبه صورت يك لفافي براي  HTTPساخته شده است.  SSLبه صورت
ذاتي پايه و اساس درخواست-پاسخ ) ( Request-Responseپروتكل  HTTPرا تغيير نداده
است.  SSLبراي امنيت برنامه هاي كاربردي هيچ كاري انجام نداده است بلكه فقط استراق سمع
بين مشتري و سرويس دهنده را كمي مشكل تر كرده است. گواهينامه سمت مشتري يكي از
خصوصيات اختياري پروتكل  SSLمي باشد كه پياده سازي شده است. يعني يك احراز هويت
دو طرفه كه بايد انجام شود).گواهينامه مشتري بايد به عنوان يك هويت محرز شده توسط
سرويس دهنده امضا شود( . اگر چه تعداد كمي از سايتهاي روي اينترنت امروزه اين كار را
انجام مي دهند""",
    """در اينجا فرض را بر آن گذاشتيم كه خواننده عزيز با پروتكل  HTTPو  HTMLآشنايي دارد و
مي خواهيم مختصر بسيار كوتاهي درباره  SSLبيان كنيم.
يكي از استثناهاي واضح و آشكاري كه بيشتر برنامه هاي كاربردي تحت وب امروزه استفاده
مي كنند پروتكل لايه سوكتهاي امن )  ( Secure Sockets Layerمي باشد كه در بالاي HTTP
قرار گرفته است.  SSLدر اصل براي رمزگذاري لايه انتقال ساخته شده است بنابراين يك
ميانجي بين مشتري و سرويس دهنده نمي تواند متن اصلي ردو بدل شده را به راحتي بخواند.
مي توان گفت كه  SSLبه صورت يك لفافي براي  HTTPساخته شده است.  SSLبه صورت
ذاتي پايه و اساس درخواست-پاسخ ) ( Request-Responseپروتكل  HTTPرا تغيير نداده
است.  SSLبراي امنيت برنامه هاي كاربردي هيچ كاري انجام نداده است بلكه فقط استراق سمع
بين مشتري و سرويس دهنده را كمي مشكل تر كرده است. گواهينامه سمت مشتري يكي از
خصوصيات اختياري پروتكل  SSLمي باشد كه پياده سازي شده است. يعني يك احراز هويت
دو طرفه كه بايد انجام شود).گواهينامه مشتري بايد به عنوان يك هويت محرز شده توسط
سرويس دهنده امضا شود( . اگر چه تعداد كمي از سايتهاي روي اينترنت امروزه اين كار را
انجام مي دهند""",
    """در اينجا فرض را بر آن گذاشتيم كه خواننده عزيز با پروتكل  HTTPو  HTMLآشنايي دارد و
مي خواهيم مختصر بسيار كوتاهي درباره  SSLبيان كنيم.
يكي از استثناهاي واضح و آشكاري كه بيشتر برنامه هاي كاربردي تحت وب امروزه استفاده
مي كنند پروتكل لايه سوكتهاي امن )  ( Secure Sockets Layerمي باشد كه در بالاي HTTP
قرار گرفته است.  SSLدر اصل براي رمزگذاري لايه انتقال ساخته شده است بنابراين يك
ميانجي بين مشتري و سرويس دهنده نمي تواند متن اصلي ردو بدل شده را به راحتي بخواند.
مي توان گفت كه  SSLبه صورت يك لفافي براي  HTTPساخته شده است.  SSLبه صورت
ذاتي پايه و اساس درخواست-پاسخ ) ( Request-Responseپروتكل  HTTPرا تغيير نداده
است.  SSLبراي امنيت برنامه هاي كاربردي هيچ كاري انجام نداده است بلكه فقط استراق سمع
بين مشتري و سرويس دهنده را كمي مشكل تر كرده است. گواهينامه سمت مشتري يكي از
خصوصيات اختياري پروتكل  SSLمي باشد كه پياده سازي شده است. يعني يك احراز هويت
دو طرفه كه بايد انجام شود).گواهينامه مشتري بايد به عنوان يك هويت محرز شده توسط
سرويس دهنده امضا شود( . اگر چه تعداد كمي از سايتهاي روي اينترنت امروزه اين كار را
انجام مي دهند""",
    """در اينجا فرض را بر آن گذاشتيم كه خواننده عزيز با پروتكل  HTTPو  HTMLآشنايي دارد و
مي خواهيم مختصر بسيار كوتاهي درباره  SSLبيان كنيم.
يكي از استثناهاي واضح و آشكاري كه بيشتر برنامه هاي كاربردي تحت وب امروزه استفاده
مي كنند پروتكل لايه سوكتهاي امن )  ( Secure Sockets Layerمي باشد كه در بالاي HTTP
قرار گرفته است.  SSLدر اصل براي رمزگذاري لايه انتقال ساخته شده است بنابراين يك
ميانجي بين مشتري و سرويس دهنده نمي تواند متن اصلي ردو بدل شده را به راحتي بخواند.
مي توان گفت كه  SSLبه صورت يك لفافي براي  HTTPساخته شده است.  SSLبه صورت
ذاتي پايه و اساس درخواست-پاسخ ) ( Request-Responseپروتكل  HTTPرا تغيير نداده
است.  SSLبراي امنيت برنامه هاي كاربردي هيچ كاري انجام نداده است بلكه فقط استراق سمع
بين مشتري و سرويس دهنده را كمي مشكل تر كرده است. گواهينامه سمت مشتري يكي از
خصوصيات اختياري پروتكل  SSLمي باشد كه پياده سازي شده است. يعني يك احراز هويت
دو طرفه كه بايد انجام شود).گواهينامه مشتري بايد به عنوان يك هويت محرز شده توسط
سرويس دهنده امضا شود( . اگر چه تعداد كمي از سايتهاي روي اينترنت امروزه اين كار را
انجام مي دهند""",
  ];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('دیگر نماز ها')),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          ListView.separated(
              itemBuilder: (context, i) {
                return Card(
                  child: ListTile(
                    tileColor: Colors.blueAccent,
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (builder) {
                        return Infomation(
                          title: names[i],
                          details: details[i],
                        );
                      }));
                    },
                    title: Center(child: Text(names[i])),
                  ),
                );
              },
              separatorBuilder: (context, i) {
                return Divider();
              },
              itemCount: names.length),
          Column(
            children: [
              ListTile(
                tileColor: Colors.blueAccent,
                title: Center(child: Text('فرض کفایه')),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Janaza(),
                      ));
                },
              ),
            ],
          ),
          Column(
            children: [
              ListTile(
                tileColor: Colors.blueAccent,
                title: Center(child: Text(' نفل')),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Tasbih(),
                      ));
                },
              ),
            ],
          ),
          Column(
            children: [
              ListTile(
                tileColor: Colors.blueAccent,
                title: Center(child: Text(' مستحب')),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Mostahab(),
                      ));
                },
              ),
            ],
          ),
          Column(
            children: [
              ListTile(
                tileColor: Colors.blueAccent,
                title: Center(child: Text(' واجب')),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Eid(),
                      ));
                },
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.blue,
        child: TabBar(
          controller: _tabController,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.favorite),
              text: 'نماز جمعه',
            ),
            Tab(
              icon: Icon(Icons.favorite),
              text: 'نماز جنازه',
            ),
            Tab(
              icon: Icon(Icons.favorite),
              text: 'نماز تسبیح',
            ),
            Tab(
              icon: Icon(Icons.favorite),
              text: 'نماز استخاره',
            ),
            Tab(
              icon: Icon(Icons.favorite),
              text: 'نماز عیدین',
            ),
          ],
        ),
      ),
    );
  }
}

class Infomation extends StatelessWidget {
  Infomation({
    super.key,
    this.title,
    this.details,
  });

  final String? title;
  final String? details;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: Text(
                title!,
                style: TextStyle(color: Colors.blue, fontSize: 30),
              )),
              Text(details!),
            ],
          ),
        ),
      ),
    );
  }
}

class Janaza extends StatefulWidget {
  const Janaza({super.key});

  @override
  State<Janaza> createState() => _JanazaState();
}

class _JanazaState extends State<Janaza> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("فزض کفایه"),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "نماز جنازه",
            style: TextStyle(fontSize: 30, color: Colors.blue),
          ),
          Text(    """در اينجا فرض را بر آن گذاشتيم كه خواننده عزيز با پروتكل  HTTPو  HTMLآشنايي دارد و
مي خواهيم مختصر بسيار كوتاهي درباره  SSLبيان كنيم.
يكي از استثناهاي واضح و آشكاري كه بيشتر برنامه هاي كاربردي تحت وب امروزه استفاده
مي كنند پروتكل لايه سوكتهاي امن )  ( Secure Sockets Layerمي باشد كه در بالاي HTTP
قرار گرفته است.  SSLدر اصل براي رمزگذاري لايه انتقال ساخته شده است بنابراين يك
ميانجي بين مشتري و سرويس دهنده نمي تواند متن اصلي ردو بدل شده را به راحتي بخواند.
مي توان گفت كه  SSLبه صورت يك لفافي براي  HTTPساخته شده است.  SSLبه صورت
ذاتي پايه و اساس درخواست-پاسخ ) ( Request-Responseپروتكل  HTTPرا تغيير نداده
است.  SSLبراي امنيت برنامه هاي كاربردي هيچ كاري انجام نداده است بلكه فقط استراق سمع
بين مشتري و سرويس دهنده را كمي مشكل تر كرده است. گواهينامه سمت مشتري يكي از
خصوصيات اختياري پروتكل  SSLمي باشد كه پياده سازي شده است. يعني يك احراز هويت
دو طرفه كه بايد انجام شود).گواهينامه مشتري بايد به عنوان يك هويت محرز شده توسط
سرويس دهنده امضا شود( . اگر چه تعداد كمي از سايتهاي روي اينترنت امروزه اين كار را
انجام مي دهند""",),
        ],
      ),
    );
  }
}


class Tasbih extends StatefulWidget {
  const Tasbih({super.key});

  @override
  State<Tasbih> createState() => _TasbihState();
}

class _TasbihState extends State<Tasbih> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("  نماز تسبیح"),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "نماز تسبیح",
            style: TextStyle(fontSize: 30, color: Colors.blue),
          ),
          Text(    """در اينجا فرض را بر آن گذاشتيم كه خواننده عزيز با پروتكل  HTTPو  HTMLآشنايي دارد و
مي خواهيم مختصر بسيار كوتاهي درباره  SSLبيان كنيم.
يكي از استثناهاي واضح و آشكاري كه بيشتر برنامه هاي كاربردي تحت وب امروزه استفاده
مي كنند پروتكل لايه سوكتهاي امن )  ( Secure Sockets Layerمي باشد كه در بالاي HTTP
قرار گرفته است.  SSLدر اصل براي رمزگذاري لايه انتقال ساخته شده است بنابراين يك
ميانجي بين مشتري و سرويس دهنده نمي تواند متن اصلي ردو بدل شده را به راحتي بخواند.
مي توان گفت كه  SSLبه صورت يك لفافي براي  HTTPساخته شده است.  SSLبه صورت
ذاتي پايه و اساس درخواست-پاسخ ) ( Request-Responseپروتكل  HTTPرا تغيير نداده
است.  SSLبراي امنيت برنامه هاي كاربردي هيچ كاري انجام نداده است بلكه فقط استراق سمع
بين مشتري و سرويس دهنده را كمي مشكل تر كرده است. گواهينامه سمت مشتري يكي از
خصوصيات اختياري پروتكل  SSLمي باشد كه پياده سازي شده است. يعني يك احراز هويت
دو طرفه كه بايد انجام شود).گواهينامه مشتري بايد به عنوان يك هويت محرز شده توسط
سرويس دهنده امضا شود( . اگر چه تعداد كمي از سايتهاي روي اينترنت امروزه اين كار را
انجام مي دهند""",),
        ],
      ),
    );
  }
}




class Mostahab extends StatefulWidget {
  const Mostahab({super.key});

  @override
  State<Mostahab> createState() => _MostahabState();
}

class _MostahabState extends State<Mostahab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(" استخاره نماز"),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "نماز استخاره",
            style: TextStyle(fontSize: 30, color: Colors.blue),
          ),
          Text(    """در اينجا فرض را بر آن گذاشتيم كه خواننده عزيز با پروتكل  HTTPو  HTMLآشنايي دارد و
مي خواهيم مختصر بسيار كوتاهي درباره  SSLبيان كنيم.
يكي از استثناهاي واضح و آشكاري كه بيشتر برنامه هاي كاربردي تحت وب امروزه استفاده
مي كنند پروتكل لايه سوكتهاي امن )  ( Secure Sockets Layerمي باشد كه در بالاي HTTP
قرار گرفته است.  SSLدر اصل براي رمزگذاري لايه انتقال ساخته شده است بنابراين يك
ميانجي بين مشتري و سرويس دهنده نمي تواند متن اصلي ردو بدل شده را به راحتي بخواند.
مي توان گفت كه  SSLبه صورت يك لفافي براي  HTTPساخته شده است.  SSLبه صورت
ذاتي پايه و اساس درخواست-پاسخ ) ( Request-Responseپروتكل  HTTPرا تغيير نداده
است.  SSLبراي امنيت برنامه هاي كاربردي هيچ كاري انجام نداده است بلكه فقط استراق سمع
بين مشتري و سرويس دهنده را كمي مشكل تر كرده است. گواهينامه سمت مشتري يكي از
خصوصيات اختياري پروتكل  SSLمي باشد كه پياده سازي شده است. يعني يك احراز هويت
دو طرفه كه بايد انجام شود).گواهينامه مشتري بايد به عنوان يك هويت محرز شده توسط
سرويس دهنده امضا شود( . اگر چه تعداد كمي از سايتهاي روي اينترنت امروزه اين كار را
انجام مي دهند""",),
        ],
      ),
    );
  }
}


class Eid extends StatefulWidget {
  const Eid({super.key});

  @override
  State<Eid> createState() => _EidState();
}

class _EidState extends State<Eid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("  نماز عید"),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "نماز عید",
            style: TextStyle(fontSize: 30, color: Colors.blue),
          ),
          Text(    """در اينجا فرض را بر آن گذاشتيم كه خواننده عزيز با پروتكل  HTTPو  HTMLآشنايي دارد و
مي خواهيم مختصر بسيار كوتاهي درباره  SSLبيان كنيم.
يكي از استثناهاي واضح و آشكاري كه بيشتر برنامه هاي كاربردي تحت وب امروزه استفاده
مي كنند پروتكل لايه سوكتهاي امن )  ( Secure Sockets Layerمي باشد كه در بالاي HTTP
قرار گرفته است.  SSLدر اصل براي رمزگذاري لايه انتقال ساخته شده است بنابراين يك
ميانجي بين مشتري و سرويس دهنده نمي تواند متن اصلي ردو بدل شده را به راحتي بخواند.
مي توان گفت كه  SSLبه صورت يك لفافي براي  HTTPساخته شده است.  SSLبه صورت
ذاتي پايه و اساس درخواست-پاسخ ) ( Request-Responseپروتكل  HTTPرا تغيير نداده
است.  SSLبراي امنيت برنامه هاي كاربردي هيچ كاري انجام نداده است بلكه فقط استراق سمع
بين مشتري و سرويس دهنده را كمي مشكل تر كرده است. گواهينامه سمت مشتري يكي از
خصوصيات اختياري پروتكل  SSLمي باشد كه پياده سازي شده است. يعني يك احراز هويت
دو طرفه كه بايد انجام شود).گواهينامه مشتري بايد به عنوان يك هويت محرز شده توسط
سرويس دهنده امضا شود( . اگر چه تعداد كمي از سايتهاي روي اينترنت امروزه اين كار را
انجام مي دهند""",),
        ],
      ),
    );
  }
}
