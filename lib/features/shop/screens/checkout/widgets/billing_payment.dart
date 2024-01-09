import 'package:t_ecommerce/exports.dart';

class BillingPaymentAmountSection extends StatelessWidget {
  const BillingPaymentAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Sub Total", style: Theme.of(context).textTheme.bodyMedium,),
            Text("\$254", style: Theme.of(context).textTheme.labelLarge,),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 2,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Shipping fees", style: Theme.of(context).textTheme.bodyMedium,),
            Text("\$6.00", style: Theme.of(context).textTheme.labelLarge,),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 2,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Tax fees", style: Theme.of(context).textTheme.bodyMedium,),
            Text("\$5.00", style: Theme.of(context).textTheme.labelLarge,),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 2,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Order Total", style: Theme.of(context).textTheme.bodyMedium,),
            Text("\$254", style: Theme.of(context).textTheme.titleMedium,),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 2,),
      ],
    );
  }
}
