import 'package:fashion_list/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NoAvailableProducts extends StatelessWidget {
  const NoAvailableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Center(
        child: Text(
          "There are no products available.",
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: kOnGreyColor,
              ),
        ),
      ),
    );
  }
}
