import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_ecommerce/common/widgets/custom_search_bar.dart';
import 'package:t_ecommerce/common/widgets/custom_shape/custom_container/primary_header_container.dart';
import 'package:t_ecommerce/common/widgets/products_cart_vertical.dart';
import 'package:t_ecommerce/common/widgets/section_heading.dart';
import 'package:t_ecommerce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:t_ecommerce/features/shop/screens/home/widgets/home_carousal_slider.dart';
import 'package:t_ecommerce/features/shop/screens/home/widgets/home_category_list_view.dart';
import 'package:t_ecommerce/utils/constants/image_strings.dart';
import 'package:t_ecommerce/utils/constants/sizes.dart';
import '../../../../common/widgets/custom_grid_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const PrimaryHeader(
              child: Column(
                children: [
                  HomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),
                  CustomSearchBar(
                    icon: Iconsax.search_normal,
                    text: 'Search in the store',
                    showBackground: true,
                    showBorder: true,
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        SectionHeader(
                          title: 'Popular Categories',
                          showButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(height: TSizes.spaceBtwItems),
                        HomeCategoryListView(),
                      ],
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwSections,)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const HomeSlider(
                    banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3
                    ],
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  CustomGridView(
                    itemCount: 4,
                    itemBuilder: (_, index) {
                      return const ProductsCartVertical();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
