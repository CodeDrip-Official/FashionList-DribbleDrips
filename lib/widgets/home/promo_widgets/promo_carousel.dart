import 'package:carousel_slider/carousel_slider.dart';
import 'package:fashion_list/widgets/home/promo_widgets/promo_banner.dart';
import 'package:flutter/material.dart';

import '../../../themes/colors.dart';

class PromoCarousel extends StatefulWidget {
  const PromoCarousel({
    super.key,
    required CarouselController carouselController,
    required this.promoBanners,
    required this.onPageChanged,
  }) : _carouselController = carouselController;

  final CarouselController _carouselController;
  final List<PromoBanner> promoBanners;
  final dynamic Function(int) onPageChanged;

  @override
  State<PromoCarousel> createState() => _PromoCarouselState();
}

class _PromoCarouselState extends State<PromoCarousel> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      carouselController: widget._carouselController,
      options: CarouselOptions(
        viewportFraction: 1.0,
        aspectRatio: 21 / 9.75,
        autoPlay: true,
        onPageChanged: (index, reason) {
          widget.onPageChanged(index);
        },
      ),
      items: widget.promoBanners,
    );
  }
}

class CarouselIndicator extends StatelessWidget {
  const CarouselIndicator({
    super.key,
    required this.promoBanners,
    required CarouselController carouselController,
    required this.currentPromo,
  }) : _carouselController = carouselController;

  final List<PromoBanner> promoBanners;
  final CarouselController _carouselController;
  final int currentPromo;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: promoBanners.asMap().entries.map((e) {
        return GestureDetector(
          onTap: () => _carouselController.animateToPage(e.key),
          child: Container(
            width: 5.0,
            height: 5.0,
            margin: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 4.0,
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color:
                  kPrimaryColor.withOpacity(currentPromo == e.key ? 0.9 : 0.3),
            ),
          ),
        );
      }).toList(),
    );
  }
}
