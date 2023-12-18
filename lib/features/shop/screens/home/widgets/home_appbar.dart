
import 'package:flutter/material.dart';

import '../../../../../common/widgets/app_bar/custom_appbar.dart';
import '../../../../../common/widgets/custom_cart_counter_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppbar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TTexts.homeAppbarTitle,
            style: Theme.of(context).textTheme.labelMedium!.apply(
                  color: TColors.grey,
                ),
          ),
          Text(
            TTexts.homeAppbarSubTitle,
            style:
                Theme.of(context).textTheme.headlineSmall!.apply(
                      color: TColors.grey,
                    ),
          ),
        ],
      ),
      actions: [
        CustomCartCounterIcon(
          onPressed: () {},
          iconColor: Colors.white,
        ),
      ],
    );
  }
}
