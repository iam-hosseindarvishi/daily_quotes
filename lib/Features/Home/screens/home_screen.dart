import 'package:daily_quotes/Features/Home/widgets/bottom_app_bar.dart';
import 'package:daily_quotes/Features/quotes/screens/new_quote.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const NewQuote()));
        },
        child: const Icon(
          Icons.add,
          color: Colors.amber,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
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
                        color: Colors.amber,
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "با زبان C به‌ راحتی می‌تونید پای خود رو هدف قرار بدید اما ++C چنین‌ کاری رو دشوار می‌کنه اما اگر موفق به انجام چنین کاری شوید، از بیخ پایتان را قطع خواهد کرد.",
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.lightGreen,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "Bjarne Straustrup",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.amber,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.save,
                                color: Colors.white,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.favorite,
                                  color: Colors.white)),
                          IconButton(
                              onPressed: () {},
                              icon:
                                  const Icon(Icons.share, color: Colors.white)),
                        ],
                      )
                    ],
                  ),
                ),
              ))
            ],
          ),
        ),
      ),
      bottomNavigationBar: const HomeBottomAppBar(),
    );
  }
}
