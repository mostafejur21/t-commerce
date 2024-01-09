
import 'package:flutter/material.dart';
import 'package:t_ecommerce/utils/constants/sizes.dart';

import '../../../../utils/constants/colors.dart';

class CustomRoundedContainer extends StatelessWidget {
  const CustomRoundedContainer({
    super.key,
    this.height,
    this.width,
    this.radius = TSizes.cardRadiusLg,
    this.padding,
    this.child,
    this.backgroundColor = TColors.white,
    this.margin,
    this.borderColor = TColors.borderPrimary,
    this.showBorder = false,
  });
  final double? height;
  final double? width;
  final EdgeInsetsGeometry? margin;
  final double radius;
  final EdgeInsetsGeometry? padding;
  final Widget? child;
  final Color backgroundColor;
  final Color borderColor;
  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
        border: showBorder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}
