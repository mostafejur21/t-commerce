import 'package:t_ecommerce/exports.dart';

class CustomCartAddAndRemoveButton extends StatelessWidget {
  const CustomCartAddAndRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircularIconButton(
          icon: Iconsax.minus,
          height: 32,
          width: 32,
          size: TSizes.md,
          color: THelperFunctions.isDarkMode(context)
              ? Colors.white
              : TColors.black,
          backgroundColor: THelperFunctions.isDarkMode(context)
              ? TColors.darkerGrey
              : TColors.light,
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
          height: 32,
          width: 32,
          size: TSizes.md,
          color: THelperFunctions.isDarkMode(context)
              ? Colors.white
              : TColors.black,
          backgroundColor: TColors.primary,
          onPressed: () {},
        ),
      ],
    );
  }
}
