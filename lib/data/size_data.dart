import '../model/size.dart';

class SizeData {
  static List<Size> sizeData = [
    Size(
      indicator: "S",
      sizeName: "Small",
      isAvailable: true,
    ),
    Size(
      indicator: "M",
      sizeName: "Medium",
      isAvailable: true,
    ),
    Size(
      indicator: "L",
      sizeName: "Large",
      isAvailable: true,
    ),
    Size(
      indicator: "XL",
      sizeName: "Extra Large",
      isAvailable: true,
    ),
  ];

  static void setIsSelected(String sizeIndicator) {
    for (var size in sizeData) {
      size.isSelected = size.indicator == sizeIndicator;
    }
  }
}
