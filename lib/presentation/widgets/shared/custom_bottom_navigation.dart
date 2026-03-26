import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      //elevation: 0,
      //backgroundColor: Colors.blueAccent,
      selectedItemColor: Colors.grey[500],
      unselectedItemColor: Colors.grey[400],
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_max_outlined),
          label: 'Inicio',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.label_important_outline),
          label: 'Categorías',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_outline),
          label: 'Favoritos',
        ),
      ],
    );
  }
}
