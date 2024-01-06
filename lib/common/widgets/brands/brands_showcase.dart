import 'package:flutter/material.dart';
import 'package:t_ecommerce/common/widgets/brands/brand_card.dart';
import 'package:t_ecommerce/common/widgets/custom_shape/custom_container/circular_container.dart';
import 'package:t_ecommerce/utils/constants/colors.dart';
import 'package:t_ecommerce/utils/constants/sizes.dart';
import 'package:t_ecommerce/utils/helpers/helper_functions.dart';

class BrandShowcase extends StatelessWidget {
  const BrandShowcase({
    super.key,
    required this.images,
  });
  final List<String> images;
  @override
  Widget build(BuildContext context) {
    return CircularContainer(
      padding: const EdgeInsets.all(TSizes.md),
      showBorder: true,
      borderColor: TColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(
        children: [
          const BrandCard(showBorder: false),
          Row(
            children: images
                .map((image) => brandTopProductsImagesWidget(image, context))
                .toList(),
          )
        ],
      ),
    );
  }
}

Widget brandTopProductsImagesWidget(String image, context) {
  return Expanded(
    child: CircularContainer(
      height: 100,
      backgroundColor: THelperFunctions.isDarkMode(context)
          ? TColors.darkerGrey
          : TColors.light,
      margin: const EdgeInsets.only(right: TSizes.sm),
      padding: const EdgeInsets.all(TSizes.md),
      child: Image(
        image: AssetImage(image),
        fit: BoxFit.contain,
      ),
    ),
  );
}
