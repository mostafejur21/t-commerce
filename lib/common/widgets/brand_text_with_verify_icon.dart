import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_ecommerce/common/widgets/brand_text.dart';
import 'package:t_ecommerce/utils/constants/colors.dart';
import 'package:t_ecommerce/utils/constants/enums.dart';
import 'package:t_ecommerce/utils/constants/sizes.dart';

class BrandTitleWithVerifyIcon extends StatelessWidget {
  const BrandTitleWithVerifyIcon({
    super.key,
    this.textColor,
    this.maxLines = 1,
    this.iconColor = TColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSizes = TextSizes.small,
    required this.title,
  });
  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes? brandTextSizes;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: BrandTitleText(
            title: title,
            maxLines: maxLines,
            textColor: textColor,
            textAlign: textAlign,
            brandTextSizes: brandTextSizes,
          ),
        ),
        const SizedBox(
          width: TSizes.sm,
        ),
        const Icon(
          Iconsax.verify5,
          color: TColors.primary,
          size: TSizes.iconXs,
        ),
      ],
    );
  }
}