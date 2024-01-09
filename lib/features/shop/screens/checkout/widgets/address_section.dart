import 'package:t_ecommerce/exports.dart';

class AddressSection extends StatelessWidget {
  const AddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeader(
          title: "Shipping Address",
          showButton: true,
          onPressed: () {},
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 2),
        Text(
          "Mostafejur Rahman",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(
              Icons.phone,
              color: Colors.grey,
              size: 16,
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            Text(
              "+880 1828649383",
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(
              Iconsax.global,
              color: Colors.grey,
              size: 16,
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            Text(
              "69 Lane, ST.Peter road, New York, USA",
              style: Theme.of(context).textTheme.bodyMedium,
              softWrap: true,
            )
          ],
        ),
      ],
    );
  }
}
