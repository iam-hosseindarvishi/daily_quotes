import 'package:daily_quotes/Features/Home/widgets/bottom_app_bar.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Favorite Screen",
          style: TextStyle(color: Colors.amber, fontSize: 20),
        ),
      ),
      bottomNavigationBar: HomeBottomAppBar(),
    );
  }
}
