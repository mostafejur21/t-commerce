import 'package:flutter/material.dart';
import 'package:t_ecommerce/common/widgets/app_bar/custom_appbar.dart';
import 'package:t_ecommerce/common/widgets/brand_text_with_verify_icon.dart';
import 'package:t_ecommerce/common/widgets/custom_cart_counter_icon.dart';
import 'package:t_ecommerce/common/widgets/custom_grid_view.dart';
import 'package:t_ecommerce/common/widgets/custom_search_bar.dart';
import 'package:t_ecommerce/common/widgets/custom_shape/custom_container/circular_container.dart';
import 'package:t_ecommerce/common/widgets/images/circular_images.dart';
import 'package:t_ecommerce/common/widgets/section_heading.dart';
import 'package:t_ecommerce/utils/constants/colors.dart';
import 'package:t_ecommerce/utils/constants/enums.dart';
import 'package:t_ecommerce/utils/constants/image_strings.dart';
import 'package:t_ecommerce/utils/constants/sizes.dart';
import 'package:t_ecommerce/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: Text(
          "Store",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          CustomCartCounterIcon(onPressed: () {}),
        ],
      ),
      body: NestedScrollView(
        body: Container(),
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: THelperFunctions.isDarkMode(context)
                  ? TColors.black
                  : TColors.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    const SizedBox(height: TSizes.spaceBtwItems),
                    const CustomSearchBar(
                      text: "Search in Store",
                      showBackground: false,
                      showBorder: true,
                      padding: EdgeInsets.zero,
                    ),
                    const SizedBox(height: TSizes.spaceBtwSections),
                    const SectionHeader(
                      title: "Featured Brands",
                      showButton: true,
                      onPressed: null,
                    ),
                    const SizedBox(height: TSizes.spaceBtwItems / 1.5),
                    CustomGridView(
                      itemCount: 4,
                      mainAxisExtent: 80,
                      itemBuilder: (_, int index) {
                        return GestureDetector(
                          onTap: () {},
                          child: CircularContainer(
                            padding: const EdgeInsets.all(TSizes.sm),
                            showBorder: true,
                            backgroundColor: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  child: CircularImage(
                                    isNetworkImage: false,
                                    backgroundColor: Colors.transparent,
                                    overlayColor:
                                        THelperFunctions.isDarkMode(context)
                                            ? TColors.white
                                            : TColors.black,
                                    image: TImages.acerlogo,
                                  ),
                                ),

                                const SizedBox(width: TSizes.spaceBtwItems / 2),

                                //Text

                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const BrandTitleWithVerifyIcon(
                                        title: "Acer",
                                        brandTextSizes: TextSizes.large,
                                      ),
                                      Text(
                                        "345 Products dkfjhakdjfh",
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelMedium,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ];
        },
      ),
    );
  }
}
