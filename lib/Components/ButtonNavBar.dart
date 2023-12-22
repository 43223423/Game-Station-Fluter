import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class ButtonNavBar extends StatelessWidget {

  void Function(int)? onTabChange;
  ButtonNavBar({super.key, required this.onTabChange});


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: GNav(activeColor: Colors.grey.shade700,
      tabActiveBorder: Border.all(color: const Color.fromARGB(255, 163, 163, 163)),
      tabBackgroundColor: Colors.grey.shade100,
      mainAxisAlignment: MainAxisAlignment.center,
      onTabChange: (value) => onTabChange!(value), 
        tabs: const [
        GButton(
          icon: Icons.home,
          text: "Shop",
        ),
        GButton(
          icon: Icons.shopping_bag_rounded,
          text: "Cart",
        )
      ]),
    );
  }
}
