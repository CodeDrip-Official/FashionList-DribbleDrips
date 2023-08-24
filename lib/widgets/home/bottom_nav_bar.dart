import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:iconsax/iconsax.dart';

import '../../themes/colors.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: GNav(
        gap: 8,
        color: kBottomBarIconColor,
        activeColor: Colors.white,
        tabBackgroundColor: kPrimaryColor,
        iconSize: 24,
        textStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: Colors.white,
            ),
        padding: const EdgeInsets.all(16),
        duration: const Duration(milliseconds: 300),
        tabs: const [
          GButton(icon: Iconsax.home_2, text: 'Home'),
          GButton(icon: Iconsax.heart, text: 'Favourite'),
          GButton(icon: Iconsax.wallet_2, text: 'Wallet'),
          GButton(icon: Iconsax.profile_circle, text: 'Profile'),
        ],
      ),
    );
  }
}
