import 'package:t_ecommerce/common/widgets/brands/brand_card.dart';
import 'package:t_ecommerce/common/widgets/sortable_products.dart';
import 'package:t_ecommerce/exports.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: Text("Nike"), showBackButton: true,),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              BrandCard(showBorder: true),
              SizedBox(height: TSizes.spaceBtwSections,),
              CustomSortableProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
