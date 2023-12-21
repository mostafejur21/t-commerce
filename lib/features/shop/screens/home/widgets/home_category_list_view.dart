import 'package:flutter/material.dart';

import '../../../../../common/widgets/virtical_images_text.dart';
import '../../../../../utils/constants/image_strings.dart';

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
            onPressed: () {},
          );
        },
      ),
    );
  }
}