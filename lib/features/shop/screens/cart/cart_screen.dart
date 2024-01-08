import 'package:t_ecommerce/common/widgets/custom_cart_add_remove_button.dart';
import 'package:t_ecommerce/common/widgets/custom_cart_items.dart';
import 'package:t_ecommerce/exports.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () {},
          child: const Text("Check Out \$233"),
        ),
      ),
      appBar: CustomAppbar(
        title: Text(
          "Cart",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackButton: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ListView.separated(
          itemBuilder: (_, __) {
            return const Column(
              children: [
                CustomCartItems(),
                SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomCartAddAndRemoveButton(),
                    CustomPriceText(price: "265"),
                  ],
                ),
              ],
            );
          },
          separatorBuilder: (_, __) => const SizedBox(
            height: TSizes.spaceBtwSections,
          ),
          itemCount: 4,
        ),
      ),
    );
  }
}
