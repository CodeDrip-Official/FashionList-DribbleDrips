import 'package:flutter/material.dart';

import '../themes/colors.dart';

class AppBarButton extends StatelessWidget {
  final IconData iconData;
  final VoidCallback onPressed;

  const AppBarButton({
    super.key,
    required this.iconData,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => onPressed(),
      style: TextButton.styleFrom(
        backgroundColor: kGreyColor,
        shape: const CircleBorder(),
      ),
      child: Icon(
        iconData,
        color: Theme.of(context).appBarTheme.iconTheme?.color ?? kBlackColor,
      ),
    );
  }
}
