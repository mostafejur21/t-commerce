import 'package:t_ecommerce/common/widgets/custom_cart_counter_icon.dart';
import 'package:t_ecommerce/exports.dart';
import 'package:t_ecommerce/features/shop/screens/cart/cart_screen.dart';
import 'package:t_ecommerce/utils/constants/text_strings.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppbar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TTexts.homeAppbarTitle,
            style: Theme.of(context).textTheme.labelMedium!.apply(
                  color: TColors.grey,
                ),
          ),
          Text(
            TTexts.homeAppbarSubTitle,
            style:
                Theme.of(context).textTheme.headlineSmall!.apply(
                      color: TColors.grey,
                    ),
          ),
        ],
      ),
      actions: [
        CustomCartCounterIcon(
          onPressed: () {
            Get.to(()=> const CartScreen());
          },
          iconColor: Colors.white,
        ),
      ],
    );
  }
}
