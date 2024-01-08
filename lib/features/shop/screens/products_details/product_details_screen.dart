import 'package:readmore/readmore.dart';
import 'package:t_ecommerce/exports.dart';
import 'package:t_ecommerce/features/shop/screens/products_details/widgets/custom_bottom_add_to_cart.dart';
import 'package:t_ecommerce/features/shop/screens/products_details/widgets/products_attribute.dart';
import 'package:t_ecommerce/features/shop/screens/products_details/widgets/products_details_image_slider.dart';
import 'package:t_ecommerce/features/shop/screens/products_details/widgets/products_meta_data.dart';
import 'package:t_ecommerce/features/shop/screens/products_details/widgets/rating_and_share.dart';
import 'package:t_ecommerce/features/shop/screens/products_rating/products_rating_screen.dart';

class ProductsDetailsScreen extends StatelessWidget {
  const ProductsDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///products images
            const CustomProductsImageSlider(),

            ///details
            Padding(
              padding: const EdgeInsets.only(
                right: TSizes.defaultSpace,
                left: TSizes.defaultSpace,
                bottom: TSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  ///Rating
                  const CustomRatingAndShareWidget(),

                  ///price, title, brands
                  const ProductsMetaData(),

                  const ProductsAttribute(),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("Check Out"),
                    ),
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  const SectionHeader(title: "Description"),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  const ReadMoreText(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                  trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: "More",
                    trimExpandedText: "less",
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),

                  ),

                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SectionHeader(title: "Review (199)"),
                      IconButton(onPressed: (){Get.to(()=> const ProductsRatingScreen());}, icon: const Icon(Iconsax.arrow_right_3, size: 18,),),
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections,),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
