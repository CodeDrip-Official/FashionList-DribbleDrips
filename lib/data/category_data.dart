import 'package:fashion_list/model/category.dart';

class CategoryData {
  static List<Category> categories = [
    Category(categoryId: 0, categoryName: "Popular", isSelected: true),
    Category(categoryId: 1, categoryName: "Hoodies"),
    Category(categoryId: 2, categoryName: "Shoes"),
    Category(categoryId: 3, categoryName: "Dress"),
    Category(categoryId: 4, categoryName: "Jackets"),
  ];

  static Category getSelectedCategory() {
    return categories.firstWhere((element) => element.isSelected);
  }

  static void setIsSelected(int categoryId) {
    for (var category in categories) {
      category.isSelected = category.categoryId == categoryId;
    }
  }
}
