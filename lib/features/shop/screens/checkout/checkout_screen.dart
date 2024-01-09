import 'package:t_ecommerce/bottom_navigation_menu.dart';
import 'package:t_ecommerce/common/widgets/promo_code.dart';
import 'package:t_ecommerce/common/widgets/success_screen/success_screen.dart';
import 'package:t_ecommerce/exports.dart';
import 'package:t_ecommerce/features/shop/screens/cart/widget/cart_items_list_view.dart';
import 'package:t_ecommerce/features/shop/screens/checkout/widgets/address_section.dart';
import 'package:t_ecommerce/features/shop/screens/checkout/widgets/billing_payment.dart';
import 'package:t_ecommerce/features/shop/screens/checkout/widgets/checkout_payment_method.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: CustomAppbar(
        title: Text(
          "Order Review",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackButton: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              const CartItemListView(
                showAddRemoveButton: false,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              const CheckOutPromoCode(),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              CustomRoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(TSizes.md),
                backgroundColor: dark ? TColors.black : TColors.white,
                child: const Column(
                  children: [
                    ///billing
                    BillingPaymentAmountSection(),
                    SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),

                    ///divider
                    Divider(),
                    SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),

                    ///Payment
                    PaymentMethodSection(),
                    SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),

                    ///Address
                    AddressSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () {
            Get.to(
              () => SuccessScreen(
                images: TImages.successfulPaymentIcon,
                title: "Payment successful",
                subtitle: "Your items will ship soon",
                onPressed: () => Get.offAll(() => const BottomNavigationMenu()),
              ),
            );
          },
          child: const Text("Check Out \$233"),
        ),
      ),
    );
  }
}
