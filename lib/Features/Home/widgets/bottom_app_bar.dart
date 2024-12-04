import 'package:daily_quotes/Features/Favorite/Screens/favorite_screen.dart';
import 'package:flutter/material.dart';

class HomeBottomAppBar extends StatelessWidget {
  const HomeBottomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: const Color(0xFF003366),
      shape: const CircularNotchedRectangle(),
      notchMargin: 12,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.home,
            ),
            color: Colors.red,
            onPressed: () {}, // عملکرد دکمه خانه
          ),
          IconButton(
            icon: const Icon(Icons.favorite),
            color: Colors.white,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FavoriteScreen(),
                  ));
            }, // عملکرد دکمه علاقه‌مندی
          ),
          IconButton(
            icon: const Icon(Icons.list),
            color: Colors.white,
            onPressed: () {}, // عملکرد دکمه لیست
          ),
          IconButton(
            icon: const Icon(Icons.person),
            color: Colors.white,
            onPressed: () {}, // عملکرد دکمه پروفایل
          ),
        ],
      ),
    );
  }
}
