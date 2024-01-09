import 'package:t_ecommerce/common/widgets/brands/brand_card.dart';
import 'package:t_ecommerce/common/widgets/custom_grid_view.dart';
import 'package:t_ecommerce/exports.dart';
import 'package:t_ecommerce/features/shop/screens/brands/brand_products.dart';

class AllBrands extends StatelessWidget {
  const AllBrands({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(title: Text("Brands"), showBackButton: true,),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              const SectionHeader(title: "Brands"),
              const SizedBox(height: TSizes.spaceBtwItems,),
              CustomGridView(
                itemCount: 24,
                mainAxisExtent: 80,
                itemBuilder: (_, int index) {
                  return BrandCard(
                    showBorder: true,
                    onTap: ()=> Get.to(()=> const BrandProducts()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
