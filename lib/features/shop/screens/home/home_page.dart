import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_ecommerce/common/widgets/custom_shape/custom_container/primary_header_container.dart';
import 'package:t_ecommerce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:t_ecommerce/features/shop/screens/home/widgets/home_category_list_view.dart';
import 'package:t_ecommerce/utils/constants/sizes.dart';

import '../../../../common/widgets/custom_search_bar.dart';
import '../../../../common/widgets/section_heading.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeader(
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


