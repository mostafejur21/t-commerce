
import 'package:flutter/material.dart';

class ProductsTitleText extends StatelessWidget {
  const ProductsTitleText({
    super.key,
    required this.title,
    this.smallSizes = false,
    this.maxLine = 2,
    this.textAlign,
  });

  final String title;
  final bool smallSizes;
  final int maxLine;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: smallSizes
          ? Theme.of(context).textTheme.labelLarge
          : Theme.of(context).textTheme.titleSmall,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLine,
      textAlign: textAlign,
    );
  }
}