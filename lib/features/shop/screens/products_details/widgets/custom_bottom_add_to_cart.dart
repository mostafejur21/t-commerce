import 'package:t_ecommerce/exports.dart';

class CustomBottomAddToCart extends StatelessWidget {
  const CustomBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: TSizes.defaultSpace, vertical: TSizes.defaultSpace / 2),
      decoration: BoxDecoration(
        color: dark ? TColors.darkerGrey : TColors.light,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(TSizes.cardRadiusLg),
          topRight: Radius.circular(TSizes.cardRadiusLg),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircularIconButton(
                icon: Iconsax.minus,
                height: 40,
                width: 40,
                color: Colors.white,
                backgroundColor: TColors.darkGrey,
                onPressed: () {},
              ),
              const SizedBox(
                width: TSizes.spaceBtwItems,
              ),
              Text(
                "2",
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(
                width: TSizes.spaceBtwItems,
              ),
              CircularIconButton(
                icon: Iconsax.add,
                height: 40,
                width: 40,
                color: Colors.white,
                backgroundColor: TColors.black,
                onPressed: () {},
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(TSizes.md),
              backgroundColor: TColors.black,
              side: const BorderSide(color: TColors.black),
            ),
            child: const Text("Add to cart"),
          ),
        ],
      ),
    );
  }
}
