import 'package:t_ecommerce/exports.dart';
import 'package:t_ecommerce/features/shop/screens/products_details/product_details_screen.dart';

class ProductsCardHorizontal extends StatelessWidget {
  const ProductsCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(()=> const ProductsDetailsScreen()),
      child: Container(
        width: 310,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductsShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkerGrey : TColors.grey,
        ),
        child: Row(
          children: [
            CustomRoundedContainer(
              height: 120,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  const SizedBox(
                    height: 120,
                    width: 120,
                    child: RoundedImageContainer(
                      imageUrl: TImages.productImage1,
                      applyImageRadius: true,
                    ),
                  ),
                  Positioned(
                    top: 12,
                    child: CustomRoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: TSizes.sm, vertical: TSizes.xs),
                      child: Text(
                        "25%",
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: TColors.black),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: CircularIconButton(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 172,
              child: Padding(
                padding: const EdgeInsets.only(top: TSizes.sm, left: TSizes.sm),
                child: Column(
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ProductsTitleText(
                          title: "Green Nike Sports Shoe and Shirt",
                          smallSizes: true,
                        ),
                        SizedBox(
                          height: TSizes.spaceBtwItems / 2,
                        ),
                        BrandTitleWithVerifyIcon(title: "Nike"),
                      ],
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Flexible(child: CustomPriceText(price: "340")),
                        Container(
                          decoration: const BoxDecoration(
                            color: TColors.dark,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(TSizes.cardRadiusMd),
                              bottomRight:
                                  Radius.circular(TSizes.productImageRadius),
                            ),
                          ),
                          child: const SizedBox(
                            width: TSizes.iconLg * 1.2,
                            height: TSizes.iconLg * 1.2,
                            child: Center(
                              child: Icon(
                                Iconsax.add,
                                color: TColors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
