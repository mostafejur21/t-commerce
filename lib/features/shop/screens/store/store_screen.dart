import 'package:t_ecommerce/common/widgets/app_bar/custom_tab_bar.dart';
import 'package:t_ecommerce/common/widgets/brands/brand_card.dart';
import 'package:t_ecommerce/common/widgets/custom_cart_counter_icon.dart';
import 'package:t_ecommerce/common/widgets/custom_grid_view.dart';
import 'package:t_ecommerce/common/widgets/custom_search_bar.dart';
import 'package:t_ecommerce/exports.dart';
import 'package:t_ecommerce/features/shop/screens/brands/all_brands.dart';
import 'package:t_ecommerce/features/shop/screens/store/widgets/category_tab.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
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
                      SectionHeader(
                        title: "Featured Brands",
                        showButton: true,
                        onPressed: () => Get.to(() => const AllBrands()),
                      ),
                      const SizedBox(height: TSizes.spaceBtwItems / 1.5),
                      CustomGridView(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, int index) {
                          return const BrandCard(
                            showBorder: true,
                          );
                        },
                      ),
                    ],
                  ),
                ),
                bottom: const CustomTabBar(tabs: [
                  Tab(text: "Sports"),
                  Tab(text: "Electronics"),
                  Tab(text: "Fashion"),
                  Tab(text: "Home"),
                  Tab(text: "Beauty"),
                ]),
              ),
            ];
          },
          body: const TabBarView(
            children: [
              BrandCategoryTab(),
              BrandCategoryTab(),
              BrandCategoryTab(),
              BrandCategoryTab(),
              BrandCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
