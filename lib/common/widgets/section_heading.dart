import 'package:flutter/material.dart';

import '../../utils/helpers/helper_functions.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key,
    required this.title,
    this.buttonTitle = "View All",
    this.showButton = false,
    this.textColor,
    this.onPressed,
  });

  final String title, buttonTitle;
  final bool showButton;
  final Color? textColor;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall!.apply(
                color: textColor ?? (dark ? Colors.white : Colors.black),
              ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showButton)
          TextButton(
            onPressed: onPressed,
            child: Text(
              buttonTitle,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
      ],
    );
  }
}
