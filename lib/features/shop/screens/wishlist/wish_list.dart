import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_ecommerce/common/widgets/app_bar/custom_appbar.dart';
import 'package:t_ecommerce/common/widgets/circular_wish_icon.dart';
import 'package:t_ecommerce/common/widgets/custom_grid_view.dart';
import 'package:t_ecommerce/common/widgets/products_cart_vertical.dart';
import 'package:t_ecommerce/features/shop/screens/home/home_page.dart';
import 'package:t_ecommerce/utils/constants/sizes.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: Text(
          "Wish List",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          CircularHeartIconButton(
            icon: Iconsax.add,
            onPressed: () => Get.to(() => const HomePage()),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: CustomGridView(
            itemCount: 14,
            itemBuilder: (context, index) => const ProductsCartVertical(),
          ),
        ),
      ),
    );
  }
}
