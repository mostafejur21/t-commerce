import 'package:flutter/material.dart';
import 'package:t_ecommerce/common/widgets/brands/brands_showcase.dart';
import 'package:t_ecommerce/common/widgets/custom_grid_view.dart';
import 'package:t_ecommerce/common/widgets/products_cart_vertical.dart';
import 'package:t_ecommerce/common/widgets/section_heading.dart';
import 'package:t_ecommerce/utils/constants/image_strings.dart';
import 'package:t_ecommerce/utils/constants/sizes.dart';

class BrandCategoryTab extends StatelessWidget {
  const BrandCategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              const BrandShowcase(
                images: [
                  TImages.productImage1,
                  TImages.productImage2,
                  TImages.productImage3,
                ],
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              const SectionHeader(title: "You may also like", showButton: true),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              CustomGridView(
                  itemCount: 4,
                  itemBuilder: (_, index) => const ProductsCartVertical()),
              const SizedBox(height: TSizes.spaceBtwSections),
            ],
          ),
        ),
      ],
    );
  }
}
