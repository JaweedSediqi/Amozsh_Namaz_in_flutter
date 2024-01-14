import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
        length: 5, vsync: this); // 2 tabs for "All Contacts" and "Favourites"
  }

  var tittle_Zohr = [
    'چهار رکعت سنت موکده',
    'چهار رکعت فرض',
    'دو رکعت سنت موکده'
  ];
  var detais_Zohr = [
    """مي خواهيم مختصر بسيار كوتاهي درباره  SSLبيان كنيم.
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
سرويس دهنده امضا شود( . اگر چه تعداد كمي از سايتهاي روي اينترنت امروزه اين كار را""",
    """مي خواهيم مختصر بسيار كوتاهي درباره  SSLبيان كنيم.
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
سرويس دهنده امضا شود( . اگر چه تعداد كمي از سايتهاي روي اينترنت امروزه اين كار را""",
    """مي خواهيم مختصر بسيار كوتاهي درباره  SSLبيان كنيم.
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
سرويس دهنده امضا شود( . اگر چه تعداد كمي از سايتهاي روي اينترنت امروزه اين كار را""",
  ];

  var tittle_Hasr = ['چهار رکعت فرض'];
  var detais_Hasr = [
    """مي خواهيم مختصر بسيار كوتاهي درباره  SSLبيان كنيم.
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
سرويس دهنده امضا شود( . اگر چه تعداد كمي از سايتهاي روي اينترنت امروزه اين كار را""",
  ];

  var tittle_sham = ['سه رکعت فرض', 'دو رکعت سنت موکده'];
  var detais_sham = [
    """مي خواهيم مختصر بسيار كوتاهي درباره  SSLبيان كنيم.
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
سرويس دهنده امضا شود( . اگر چه تعداد كمي از سايتهاي روي اينترنت امروزه اين كار را""",
    """مي خواهيم مختصر بسيار كوتاهي درباره  SSLبيان كنيم.
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
سرويس دهنده امضا شود( . اگر چه تعداد كمي از سايتهاي روي اينترنت امروزه اين كار را""",
  ];

  var tittle_Sob = ['دو رکعت سنت موکده', 'دو رکعت فرض'];
  var detais_Sob = [
    """مي خواهيم مختصر بسيار كوتاهي درباره  SSLبيان كنيم.
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
سرويس دهنده امضا شود( . اگر چه تعداد كمي از سايتهاي روي اينترنت امروزه اين كار را""",
    """مي خواهيم مختصر بسيار كوتاهي درباره  SSLبيان كنيم.
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
سرويس دهنده امضا شود( . اگر چه تعداد كمي از سايتهاي روي اينترنت امروزه اين كار را"""
  ];
  var tittle_khoftan = ['چهار رکعت  فرض', 'دو رکعت سنت', 'سه رکعت  وتر'];
  var detais_khoftan = [
    """مي خواهيم مختصر بسيار كوتاهي درباره  SSLبيان كنيم.
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
سرويس دهنده امضا شود( . اگر چه تعداد كمي از سايتهاي روي اينترنت امروزه اين كار را""",
    """مي خواهيم مختصر بسيار كوتاهي درباره  SSLبيان كنيم.
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
سرويس دهنده امضا شود( . اگر چه تعداد كمي از سايتهاي روي اينترنت امروزه اين كار را""",
    """مي خواهيم مختصر بسيار كوتاهي درباره  SSLبيان كنيم.
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
سرويس دهنده امضا شود( . اگر چه تعداد كمي از سايتهاي روي اينترنت امروزه اين كار را""",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('نماز هایی پنجگانه'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'نماز صیح'),
            Tab(text: 'نماز ظهر'),
            Tab(text: 'نماز عصر'),
            Tab(text: 'نماز شام'),
            Tab(text: 'نماز خفتن'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ListView.separated(
              itemBuilder: (context, i) {
                return Card(
                  child: ListTile(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (builder) {
                        return Sob(
                          tittle: tittle_Sob[i],
                          detais: detais_Sob[i],
                        );
                      }));
                    },
                    title: Center(child: Text(tittle_Sob[i])),
                  ),
                );
              },
              separatorBuilder: (context, i) {
                return Divider();
              },
              itemCount: tittle_Sob.length),
          ListView.separated(
              itemBuilder: (context, i) {
                return Card(
                  child: ListTile(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (builder) {
                        return Zor(
                          tittle: tittle_Zohr[i],
                          detais: detais_Zohr[i],
                        );
                      }));
                    },
                    title: Center(child: Text(tittle_Zohr[i])),
                  ),
                );
              },
              separatorBuilder: (context, i) {
                return Divider();
              },
              itemCount: tittle_Zohr.length),
          ListView.separated(
              itemBuilder: (context, i) {
                return Card(
                  child: ListTile(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (builder) {
                        return Asr(
                          tittle: tittle_Hasr[i],
                          detais: detais_Hasr[i],
                        );
                      }));
                    },
                    title: Center(child: Text(tittle_Hasr[i])),
                  ),
                );
              },
              separatorBuilder: (context, i) {
                return Divider();
              },
              itemCount: tittle_Hasr.length),
          ListView.separated(
              itemBuilder: (context, i) {
                return Card(
                  child: ListTile(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (builder) {
                        return Sham(
                          tittle: tittle_sham[i],
                          detais: detais_sham[i],
                        );
                      }));
                    },
                    title: Center(child: Text(tittle_sham[i])),
                  ),
                );
              },
              separatorBuilder: (context, i) {
                return Divider();
              },
              itemCount: tittle_sham.length),
          ListView.separated(
              itemBuilder: (context, i) {
                return Card(
                  child: ListTile(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (builder) {
                        return Khoftan(
                          tittle: tittle_khoftan[i],
                          detais: detais_khoftan[i],
                        );
                      }));
                    },
                    title: Center(child: Text(tittle_khoftan[i])),
                  ),
                );
              },
              separatorBuilder: (context, i) {
                return Divider();
              },
              itemCount: tittle_khoftan.length),
        ],
      ),
    );
  }
}

class Sob extends StatefulWidget {
  Sob({super.key, this.tittle, this.detais});
  var tittle;
  var detais;
  @override
  State<Sob> createState() => _SobState();
}

class _SobState extends State<Sob> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(widget.tittle),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.tittle,
            style: TextStyle(fontSize: 30),
          ),
          Text(widget.detais)
        ],
      ),
    );
  }
}

class Zor extends StatefulWidget {
  Zor({super.key, this.tittle, this.detais});
  var tittle;
  var detais;
  @override
  State<Zor> createState() => _ZorState();
}

class _ZorState extends State<Zor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(widget.tittle),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.tittle,
            style: TextStyle(fontSize: 30),
          ),
          Text(widget.detais)
        ],
      ),
    );
  }
}

class Asr extends StatefulWidget {
  Asr({super.key, this.tittle, this.detais});
  var tittle;
  var detais;
  @override
  State<Asr> createState() => _AsrState();
}

class _AsrState extends State<Asr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(widget.tittle),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.tittle,
            style: TextStyle(fontSize: 30),
          ),
          Text(widget.detais)
        ],
      ),
    );
  }
}

class Sham extends StatefulWidget {
  Sham({super.key, this.tittle, this.detais});
  var tittle;
  var detais;
  @override
  State<Sham> createState() => _ShamState();
}

class _ShamState extends State<Sham> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(widget.tittle),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.tittle,
            style: TextStyle(fontSize: 30),
          ),
          Text(widget.detais)
        ],
      ),
    );
  }
}

class Khoftan extends StatefulWidget {
  Khoftan({super.key, this.tittle, this.detais});
  var tittle;
  var detais;
  @override
  State<Khoftan> createState() => _KhoftanState();
}

class _KhoftanState extends State<Khoftan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(widget.tittle),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.tittle,
            style: TextStyle(fontSize: 30),
          ),
          Text(widget.detais)
        ],
      ),
    );
  }
}
