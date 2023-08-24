import 'package:carousel_slider/carousel_slider.dart';
import 'package:fashion_list/data/category_data.dart';
import 'package:fashion_list/data/product_data.dart';
import 'package:fashion_list/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_floating_bottom_bar/flutter_floating_bottom_bar.dart';
import 'package:iconsax/iconsax.dart';

import '../widgets/home/barrel.dart';
import '../model/category.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void updateSelectedCategory(Category category) {
    setState(() {
      CategoryData.setIsSelected(category.categoryId);
    });
  }

  int currentPromo = 0;
  final List<PromoBanner> promoBanners = [
    const PromoBanner(
      promoText: "Get Your Special\nSale Up To 50%",
      promoImageUrl: "lib/images/promo1.png",
      reverseLayout: TextDirection.ltr,
      promoBtnText: "Get Now",
      imageWidth: 120,
      backgroundColor: kBlackColor,
      titleColor: Colors.white,
      buttonBackgroundColor: kPrimaryColor,
      buttonColor: Colors.white,
    ),
    const PromoBanner(
      promoText: "Jackets for Sale!",
      promoImageUrl: "lib/images/item2.png",
      reverseLayout: TextDirection.rtl,
      promoBtnText: "Check It Out",
      imageWidth: 140,
      backgroundColor: kPrimaryColor,
      titleColor: Colors.white,
      buttonBackgroundColor: Colors.white,
      buttonColor: kPrimaryColor,
    ),
    const PromoBanner(
      promoText: "Use CODEDRIP\nfor 25% Off!",
      promoImageUrl: "lib/images/item3.png",
      reverseLayout: TextDirection.ltr,
      promoBtnText: "Copy Code",
      imageWidth: 150,
      backgroundColor: Colors.white,
      titleColor: kBlackColor,
      buttonBackgroundColor: kPrimaryColor,
      buttonColor: Colors.white,
    ),
  ];
  late CarouselController _carouselController;

  @override
  void initState() {
    _carouselController = CarouselController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 60,
        toolbarHeight: 76,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: AppBarButton(
            iconData: Iconsax.menu_14,
            onPressed: () {},
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: AppBarButton(
              iconData: Iconsax.bag_2,
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 6.0, top: 16.0, bottom: 16.0),
            child: AppBarButton(
              iconData: Iconsax.messages,
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: BottomBar(
        curve: Curves.easeInOut,
        duration: const Duration(milliseconds: 300),
        barColor: kBlackColor,
        width: MediaQuery.of(context).size.width * 0.875,
        borderRadius: const BorderRadius.all(Radius.circular(50.0)),
        body: (context, controller) => Column(
          children: [
            const SearchField(),
            PromoCarousel(
              carouselController: _carouselController,
              promoBanners: promoBanners,
              onPageChanged: (index) {
                setState(() {
                  currentPromo = index;
                });
              },
            ),
            CarouselIndicator(
                promoBanners: promoBanners,
                carouselController: _carouselController,
                currentPromo: currentPromo),
            CategoryChip(
              categories: CategoryData.categories,
              onSelected: (category) => updateSelectedCategory(category),
            ),
            const ProductHeader(),
            ProductGridView(
              controller: controller,
              productData: ProductData.products
                  .where((element) => element.productCategoryId
                      .contains(CategoryData.getSelectedCategory().categoryId))
                  .toList(),
            ),
          ],
        ),
        child: const BottomNavBar(),
      ),
    );
  }
}
