import 'package:flutter/material.dart';
import 'package:flutter_floating_bottom_bar/flutter_floating_bottom_bar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

import '../widgets/details/barrel.dart';
import '../model/product.dart';
import '../themes/colors.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key, required this.product});

  final Product product;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Product Details",
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: AppBarButton(
            iconData: Iconsax.arrow_left_2,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 6.0, top: 16.0, bottom: 16.0),
            child: AppBarButton(
              iconData: Iconsax.bag_2,
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: BottomBar(
        curve: Curves.easeInOut,
        duration: const Duration(milliseconds: 300),
        barColor: kBlackColor,
        width: MediaQuery.of(context).size.width * 0.9,
        reverse: true,
        showIcon: false,
        borderRadius: const BorderRadius.all(Radius.circular(50.0)),
        body: (context, controller) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SingleChildScrollView(
              controller: controller,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeroProductImage(product: widget.product),
                  const SizedBox(height: 20.0),
                  const SellerRow(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      widget.product.productName,
                      textAlign: TextAlign.left,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  RatingRow(
                    productRating: widget.product.productRating,
                    totalReview: widget.product.totalReview,
                  ),
                  const SizedBox(height: 30.0),
                  Text(
                    "Description",
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  ReadMoreText(
                    "Elevate your style with our Urban Edge Hoodie, a perfect blend of comfort and fashion. Crafted from premium cotton, this hoodie features a modern fit, ribbed cuffs, and an adjustable drawstring hood. The sleek design includes a front kangaroo pocket for added convenience and a touch of streetwear flair. Whether you're lounging at home or hitting the streets, our Urban Edge Hoodie is the ultimate statement piece for your casual wardrobe. Stay warm, stay chic, and embrace the urban vibe with this must-have hoodie. ",
                    trimLines: 4,
                    colorClickableText: kPrimaryColor,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: "Read More",
                    trimExpandedText: "Read Less",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 30.0),
                  Text(
                    "Size",
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const SizeChip(),
                  const SizedBox(height: 120.0)
                ],
              ),
            ),
          );
        },
        child: AddToCardBar(productPrice: widget.product.productPrice),
      ),
    );
  }
}
