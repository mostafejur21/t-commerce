import 'package:t_ecommerce/common/widgets/custom_grid_view.dart';
import 'package:t_ecommerce/common/widgets/products_cart_vertical.dart';
import 'package:t_ecommerce/exports.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        title: Text("Popular Products"),
        showBackButton: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
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
          ),
        ),
      ),
    );
  }
}
