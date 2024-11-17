import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Color(0xFF00162A)),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Welcome Back 👋",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Expanded(
                  child: Center(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                      color: const Color(0xFF003366),
                      borderRadius: BorderRadius.circular(16)),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "ابتدا مشکل را حل کنید ، سپس کد بزنید",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "John Johnson",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white70,
                            fontStyle: FontStyle.italic),
                      )
                    ],
                  ),
                ),
              ))
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(003459),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              color: Colors.white,
              onPressed: () {}, // عملکرد دکمه خانه
            ),
            IconButton(
              icon: Icon(Icons.favorite),
              color: Colors.white,
              onPressed: () {}, // عملکرد دکمه علاقه‌مندی
            ),
            IconButton(
              icon: Icon(Icons.list),
              color: Colors.white,
              onPressed: () {}, // عملکرد دکمه لیست
            ),
            IconButton(
              icon: Icon(Icons.person),
              color: Colors.white,
              onPressed: () {}, // عملکرد دکمه پروفایل
            ),
          ],
        ),
      ),
    );
  }
}
