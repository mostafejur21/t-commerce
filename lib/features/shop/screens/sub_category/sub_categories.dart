import 'package:t_ecommerce/common/widgets/products_card_horizontal.dart';
import 'package:t_ecommerce/exports.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        title: Text("Sports Shirt"),
        showBackButton: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              ///Banner]
              const RoundedImageContainer(
                width: double.infinity,
                imageUrl: TImages.promoBanner1,
                applyImageRadius: true,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              ///sub category
              Column(
                children: [
                  SectionHeader(
                      title: "Sports", showButton: true, onPressed: () {}),
                  const SizedBox(height: TSizes.spaceBtwItems / 2),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) =>
                          const ProductsCardHorizontal(),
                      separatorBuilder: (_, __) =>
                          const SizedBox(
                        width: TSizes.spaceBtwItems,
                      ),
                      itemCount: 4,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
