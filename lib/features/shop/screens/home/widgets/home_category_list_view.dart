import 'package:t_ecommerce/exports.dart';
import 'package:t_ecommerce/features/shop/screens/sub_category/sub_categories.dart';

import '../../../../../common/widgets/virtical_images_text.dart';

class HomeCategoryListView extends StatelessWidget {
  const HomeCategoryListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 15,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return VerticalImageText(
            image: TImages.shoeIcon,
            title: 'Shoes',
            onPressed: () => Get.to(()=> const SubCategoriesScreen()),
          );
        },
      ),
    );
  }
}