import 'package:t_ecommerce/common/widgets/products_cart_vertical.dart';
import 'package:t_ecommerce/exports.dart';

import 'custom_grid_view.dart';

class CustomSortableProducts extends StatelessWidget {
  const CustomSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField(
          decoration:
          const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          items: [
            'Name',
            'Higher Price',
            'Lower Price',
            'Sale',
            'Newest',
            'Popular'
          ]
              .map((options) =>
              DropdownMenuItem(value: options, child: Text(options)))
              .toList(),
          onChanged: (value) {},
        ),
        const SizedBox(height: TSizes.spaceBtwSections,),
        CustomGridView(
          itemCount: 40,
          itemBuilder: (_, index) {
            return const ProductsCartVertical();
          },
        ),
      ],
    );
  }
}
