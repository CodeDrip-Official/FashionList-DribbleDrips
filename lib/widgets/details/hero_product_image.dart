import 'package:flutter/material.dart';

import '../../model/product.dart';
import '../product_card.dart';

class HeroProductImage extends StatefulWidget {
  const HeroProductImage({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  State<HeroProductImage> createState() => _HeroProductImageState();
}

class _HeroProductImageState extends State<HeroProductImage> {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "productCard${widget.product.productId}",
      child: ProductImageWithFavButton(
        product: widget.product,
        onPressed: () {
          setState(() {
            widget.product.isFavourite = !widget.product.isFavourite;
          });
        },
      ),
    );
  }
}
