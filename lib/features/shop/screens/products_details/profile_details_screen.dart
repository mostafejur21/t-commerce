import 'package:t_ecommerce/exports.dart';
import 'package:t_ecommerce/features/shop/screens/products_details/widgets/products_details_image_slider.dart';
import 'package:t_ecommerce/features/shop/screens/products_details/widgets/products_meta_data.dart';
import 'package:t_ecommerce/features/shop/screens/products_details/widgets/rating_and_share.dart';

class ProductsDetailsScreen extends StatelessWidget {
  const ProductsDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          ///products images
          CustomProductsImageSlider(),

          ///details
          Padding(
            padding: EdgeInsets.only(
              right: TSizes.defaultSpace,
              left: TSizes.defaultSpace,
              bottom: TSizes.defaultSpace,
            ),
            child: Column(
              children: [
                ///Rating
                CustomRatingAndShareWidget(),
                ///price, title, brands
                ProductsMetaData(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
