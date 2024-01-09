import 'package:t_ecommerce/exports.dart';

class ProductsMetaData extends StatelessWidget {
  const ProductsMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CustomRoundedContainer(
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
            const SizedBox(width: TSizes.spaceBtwItems,),
            Text("\$350", style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
            const SizedBox(width: TSizes.spaceBtwItems,),
            const CustomPriceText(price: "175", isLarge: true,),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5,),
        
        const ProductsTitleText(title: "Green nike sports shirt"),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5,),
        Row(
          children: [
            const ProductsTitleText(title: "Status"),
            const SizedBox(width: TSizes.spaceBtwItems,),
            Text("In Stock", style: Theme.of(context).textTheme.titleMedium,),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5,),

        Row(
          children: [
            CircularImage(image: TImages.nikeLogo,
            height: 36,
              width: 36,
              overlayColor: dark ? TColors.white : TColors.black,
            ),
            const BrandTitleWithVerifyIcon(title: "Nike", brandTextSizes: TextSizes.large,),
          ],
        ),

      ],
    );
  }
}
