// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:my_store_app/constants.dart';
// import 'package:my_store_app/widgets/details/prodect_image.dart';

class colorDot extends StatelessWidget {
  const colorDot({
    super.key,
    this.fillColor = kBackgroundColor,
    this.isSelected = false,
  });
  final Color fillColor;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.all(3),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? Colors.red : Colors.transparent,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: fillColor,
        ),
      ),
    );
  }
}
