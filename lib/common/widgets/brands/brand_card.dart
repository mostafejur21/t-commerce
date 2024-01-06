import 'package:flutter/material.dart';
import 'package:t_ecommerce/common/widgets/brand_text_with_verify_icon.dart';
import 'package:t_ecommerce/common/widgets/custom_shape/custom_container/circular_container.dart';
import 'package:t_ecommerce/common/widgets/images/circular_images.dart';
import 'package:t_ecommerce/utils/constants/colors.dart';
import 'package:t_ecommerce/utils/constants/enums.dart';
import 'package:t_ecommerce/utils/constants/image_strings.dart';
import 'package:t_ecommerce/utils/constants/sizes.dart';
import 'package:t_ecommerce/utils/helpers/helper_functions.dart';


class BrandCard extends StatelessWidget {
  const BrandCard({
    required this.showBorder,
    this.onTap,
    super.key,
  });
final bool showBorder;
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: CircularContainer(
        padding: const EdgeInsets.all(TSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            Flexible(
              child: CircularImage(
                isNetworkImage: false,
                backgroundColor: Colors.transparent,
                overlayColor:
                    dark
                        ? TColors.white
                        : TColors.black,
                image: TImages.acerlogo,
              ),
            ),
    
            const SizedBox(
                width: TSizes.spaceBtwItems / 2),
    
            //Text
    
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  const BrandTitleWithVerifyIcon(
                    title: "Acer",
                    brandTextSizes: TextSizes.large,
                  ),
                  Text(
                    "345 Products dkfjhakdjfh",
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
