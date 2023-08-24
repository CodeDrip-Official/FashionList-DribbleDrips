import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../data/size_data.dart';
import '../../themes/colors.dart';

class SizeChip extends StatefulWidget {
  const SizeChip({
    super.key,
  });

  @override
  State<SizeChip> createState() => _SizeChipState();
}

class _SizeChipState extends State<SizeChip> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: SizeData.sizeData.map((size) {
          return ChoiceChip(
            label: Text(size.indicator),
            labelPadding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 4.0,
            ),
            selected: size.isSelected,
            onSelected: (value) {
              setState(() {
                SizeData.setIsSelected(size.indicator);
              });
            },
            selectedColor: kPrimaryColor,
            backgroundColor: kGreyColor,
            labelStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
                  color: size.isSelected ? Colors.white : kBlackColor,
                ),
          );
        }).toList(),
      ),
    );
  }
}
