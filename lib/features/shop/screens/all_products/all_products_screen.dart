import 'package:t_ecommerce/common/widgets/sortable_products.dart';
import 'package:t_ecommerce/exports.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppbar(
        title: Text("Popular Products"),
        showBackButton: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: CustomSortableProducts(),
        ),
      ),
    );
  }
}
