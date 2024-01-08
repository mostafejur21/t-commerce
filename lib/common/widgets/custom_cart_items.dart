import 'package:t_ecommerce/exports.dart';


class CustomCartItems extends StatelessWidget {
  const CustomCartItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RoundedImageContainer(
          imageUrl: TImages.productImage1,
          width: 60,
          height: 60,
          backgroundColor: THelperFunctions.isDarkMode(context)
              ? TColors.darkerGrey
              : TColors.light,
        ),
        const SizedBox(
          width: TSizes.spaceBtwItems,
        ),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BrandTitleWithVerifyIcon(title: "Nike"),
              const Flexible(
                child: ProductsTitleText(
                  title: "Black Sports Shoe with extra laces",
                  maxLine: 1,
                ),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Color",
                      style:
                      Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: "Red",
                      style:
                      Theme.of(context).textTheme.bodyLarge,
                    ),
                    const TextSpan(text: " "),
                    TextSpan(
                      text: "Size",
                      style:
                      Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: "UK 08",
                      style:
                      Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
