import 'package:t_ecommerce/exports.dart';
import 'package:t_ecommerce/features/shop/screens/cart/widget/cart_items_list_view.dart';
import 'package:t_ecommerce/features/shop/screens/checkout/checkout_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () {
            Get.to(() => const CheckOutScreen());
          },
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
      body: const Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: CartItemListView(),
      ),
    );
  }
}