import 'package:t_ecommerce/exports.dart';
import 'package:t_ecommerce/features/personalization/screen/address/address.dart';
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeader(
              child: Column(
                children: [
                  CustomAppbar(
                    title: Text(
                      "Account ",
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: Colors.white),
                    ),
                  ),
                  const CustomUserProfileTile(),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const SectionHeader(title: "Account Setting"),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  SettingMenuTile(
                    icon: Iconsax.safe_home,
                    title: "My Address",
                    subTitle: "Set shop delivery address",
                    onTap: () {
                      Get.to(()=> const UserAddressScreen());
                    },
                  ),
                  SettingMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: "My Cart",
                    subTitle: "Add, remove and move for checkout ",
                    onTap: () {},
                  ),
                  SettingMenuTile(
                    icon: Iconsax.bag_tick,
                    title: "My Order",
                    subTitle: "In-Progress or complete orders",
                    onTap: () {},
                  ),
                  SettingMenuTile(
                    icon: Iconsax.bank,
                    title: "My Bank account",
                    subTitle: "Set your bank account for withdraw",
                    onTap: () {},
                  ),
                  SettingMenuTile(
                    icon: Iconsax.discount_shape,
                    title: "My Coupons",
                    subTitle: "List of all your coupons",
                    onTap: () {},
                  ),
                  SettingMenuTile(
                    icon: Iconsax.notification,
                    title: "Notification",
                    subTitle: "Set shop delivery address",
                    onTap: () {},
                  ),
                  SettingMenuTile(
                    icon: Iconsax.security_card,
                    title: "Security",
                    subTitle: "Set shop delivery address",
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  const SectionHeader(title: "App Setting"),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  SettingMenuTile(
                    icon: Iconsax.document_upload,
                    title: "Load Data",
                    subTitle: "Upload data to your cloud Firebase",
                    onTap: () {},
                  ),
                  SettingMenuTile(
                    icon: Iconsax.language_circle,
                    title: "Language",
                    subTitle: "Set shop delivery address",
                    onTap: () {},
                  ),
                  SettingMenuTile(
                    icon: Iconsax.moon,
                    title: "Dark Mode",
                    subTitle: "Switch theme",
                    trailing: Switch(
                      value: false,
                      onChanged: (value) {},
                    ),
                    onTap: () {},
                  ),
                  SettingMenuTile(
                    icon: Iconsax.image,
                    title: "HD quality",
                    subTitle: "Set image quality high",
                    onTap: () {},
                    trailing: Switch(
                      value: true,
                      onChanged: (value) {},
                    ),
                  ),

                  const SizedBox(height: TSizes.spaceBtwSections,),
                  SizedBox(width: double.infinity, child: OutlinedButton(onPressed: (){}, child: const Text("Logout"),),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections * 2.5,),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
