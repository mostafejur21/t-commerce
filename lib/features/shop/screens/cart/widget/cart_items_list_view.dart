import 'package:t_ecommerce/common/widgets/custom_cart_add_remove_button.dart';
import 'package:t_ecommerce/common/widgets/custom_cart_items.dart';
import 'package:t_ecommerce/exports.dart';


class CartItemListView extends StatelessWidget {
  const CartItemListView({
    super.key,
    this.showAddRemoveButton = true,
  });
  final bool showAddRemoveButton;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (_, __) {
        return Column(
          children: [
            const CustomCartItems(),
            if(showAddRemoveButton) const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            if(showAddRemoveButton) const Row(
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
    );
  }
}
