import 'package:t_ecommerce/exports.dart';

class PaymentMethodSection extends StatelessWidget {
  const PaymentMethodSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionHeader(
          title: "Payment Method",
          buttonTitle: "Change",
          onPressed: () {},
          showButton: true,
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems / 2,
        ),
        Row(
          children: [
            CustomRoundedContainer(
              height: 35,
              width: 60,
              backgroundColor: THelperFunctions.isDarkMode(context)
                  ? TColors.light
                  : TColors.white,
              padding: const EdgeInsets.all(TSizes.sm),
              child: Image.asset(
                TImages.visa,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),
            Text(
              "Visa",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ],
    );
  }
}
