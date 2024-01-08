import 'package:t_ecommerce/exports.dart';
import 'package:t_ecommerce/features/shop/screens/products_rating/widgets/overall_products_rating.dart';
import 'package:t_ecommerce/features/shop/screens/products_rating/widgets/user_review.dart';

import '../../../../common/widgets/custom_rating_indicator.dart';

class ProductsRatingScreen extends StatelessWidget {
  const ProductsRatingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        title: Text("Rating and Review"),
        showBackButton: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  "Rating and reviews are verified and the people who gives the rating are using same devices that you are using right now"),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              const OverallProductsRating(),
              const CustomRatingBarIndicator(rating: 2.2),
              Text("12,458", style: Theme.of(context).textTheme.bodySmall,),
              const SizedBox(height: TSizes.spaceBtwSections,),
              const UserReview(),
              const UserReview(),
              const UserReview(),
              const UserReview(),
            ],
          ),
        ),
      ),
    );
  }
}
