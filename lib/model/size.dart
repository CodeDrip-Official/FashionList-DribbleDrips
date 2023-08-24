class Size {
  final String indicator;
  final String sizeName;
  bool isSelected;
  final bool isAvailable;

  Size({
    required this.indicator,
    required this.sizeName,
    required this.isAvailable,
    bool? isSelected,
  }) : isSelected = isSelected ?? false;
}
