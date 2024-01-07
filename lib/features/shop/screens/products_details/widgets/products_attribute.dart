import 'package:t_ecommerce/common/widgets/custom_choice_chip.dart';
import 'package:t_ecommerce/exports.dart';

class ProductsAttribute extends StatelessWidget {
  const ProductsAttribute({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        CircularContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Column(
            children: [
              Row(
                children: [
                  const SectionHeader(title: "Variation"),
                  const SizedBox(
                    width: TSizes.spaceBtwItems,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          ProductsTitleText(
                            title: "Price : ",
                            smallSizes: true,
                          ),
                          CustomPriceText(
                            price: "25.99",
                            lineThrough: true,
                          ),
                          SizedBox(
                            width: TSizes.spaceBtwItems,
                          ),
                          CustomPriceText(price: "19.99"),
                        ],
                      ),
                      Row(
                        children: [
                          const ProductsTitleText(
                            title: "Stock : ",
                            smallSizes: true,
                          ),
                          Text(
                            "In stock",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const ProductsTitleText(
                title:
                    "This is a description for that products and it will show max 4 line",
                maxLine: 4,
                smallSizes: true,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeader(title: "Color"),
            const SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),
            Wrap(
              children: [
                CustomChoiceChip(
                  text: 'Green',
                  selected: false,
                  onSelected: (value) {},
                ),
                CustomChoiceChip(
                  text: 'Red',
                  selected: true,
                  onSelected: (value) {},
                ),
                CustomChoiceChip(
                  text: 'Yellow',
                  selected: false,
                  onSelected: (value) {},
                ),
                CustomChoiceChip(
                  text: 'Green',
                  selected: false,
                  onSelected: (value) {},
                ),
                CustomChoiceChip(
                  text: 'Red',
                  selected: true,
                  onSelected: (value) {},
                ),
                CustomChoiceChip(
                  text: 'Yellow',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeader(title: "Sizes"),
            Wrap(
              spacing: 8,
              children: [
                CustomChoiceChip(
                  text: 'EU-34',
                  selected: false,
                  onSelected: (value) {},
                ),
                CustomChoiceChip(
                  text: 'EU-36',
                  selected: true,
                  onSelected: (value) {},
                ),
                CustomChoiceChip(
                  text: 'EU-38',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
