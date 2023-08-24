import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../themes/colors.dart';

class PromoBanner extends StatelessWidget {
  final String promoText;
  final String promoImageUrl;
  final TextDirection reverseLayout;
  final String promoBtnText;
  final double imageWidth;
  final Color titleColor;
  final Color backgroundColor;
  final Color buttonBackgroundColor;
  final Color buttonColor;

  const PromoBanner({
    super.key,
    required this.promoText,
    required this.promoImageUrl,
    required this.reverseLayout,
    required this.promoBtnText,
    required this.imageWidth,
    required this.titleColor,
    required this.backgroundColor,
    required this.buttonBackgroundColor,
    required this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0, left: 16.0, right: 16.0),
      child: Card(
        elevation: 0,
        color: backgroundColor,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(24.0))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Row(
            textDirection: reverseLayout,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      promoText,
                      textAlign: TextAlign.start,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: titleColor,
                          ),
                    ),
                    const SizedBox(height: 8.0),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: buttonBackgroundColor,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50.0),
                          ),
                        ),
                      ),
                      child: Text(
                        promoBtnText,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: buttonColor,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    )
                  ],
                ),
              ),
              Image.asset(
                promoImageUrl,
                width: imageWidth,
                alignment: Alignment.bottomRight,
                fit: BoxFit.cover,
              )
            ],
          ),
        ),
      ),
    );
  }
}
