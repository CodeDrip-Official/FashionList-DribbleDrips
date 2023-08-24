import 'package:fashion_list/model/product.dart';

class ProductData {
  static List<Product> products = [
    Product(
      productId: 0,
      productName: "Turquoise Dress",
      productRating: 4.6,
      totalReview: 12,
      productPrice: 49.99,
      isFavourite: false,
      productCategoryId: [0, 3],
    ),
    Product(
      productId: 1,
      productName: "Bomber Jacket",
      productRating: 4.9,
      totalReview: 10,
      productPrice: 69.99,
      isFavourite: true,
      productCategoryId: [0, 4],
    ),
    Product(
      productId: 2,
      productName: "Hipster Hoodie",
      productRating: 4.3,
      totalReview: 6,
      productPrice: 55.99,
      isFavourite: false,
      productCategoryId: [1],
    ),
    Product(
      productId: 3,
      productName: "Black Cold Jacket",
      productRating: 5.0,
      totalReview: 23,
      productPrice: 74.99,
      isFavourite: true,
      productCategoryId: [0, 4],
    ),
  ];
}
