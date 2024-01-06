import 'package:t_ecommerce/exports.dart';
import 'package:t_ecommerce/features/personalization/screen/profile/widgets/profile_menu.dart';

class UserProfileDetails extends StatelessWidget {
  const UserProfileDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        title: Text(
          "Profile Details",
        ),
        showBackButton: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //Profile Image
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const CircularImage(
                      image: TImages.user,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text("Change Profile Image"),
                    ),
                  ],
                ),
              ),

              ///Details
              const SizedBox(
                height: TSizes.spaceBtwItems / 2,
              ),
              const Divider(),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              const SectionHeader(title: "Profile Information"),
              const SizedBox(height: TSizes.spaceBtwItems,),


              CustomProfileMenu(title: 'Name', value: 'Mostafejur Rahman', onTap: () { },),
              CustomProfileMenu(title: 'User id', value: '@mostafejur21', onTap: () { },),
              const SizedBox(height: TSizes.spaceBtwItems,),

              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems,),
              const SectionHeader(title: "Personal Information"),
              const SizedBox(height: TSizes.spaceBtwItems,),

              CustomProfileMenu(title: "User id", value: "34763",  icon: Iconsax.copy,onTap: (){}),
              CustomProfileMenu(title: 'Email', value: 'info.mostafejur21@gmail.com', onTap: () { },),
              CustomProfileMenu(title: 'Phone', value: '01828-649383', onTap: () { },),
              CustomProfileMenu(title: "Gender", value: "Male", onTap: (){}),
              CustomProfileMenu(title: "Date of Birth", value: "21-01-2001", onTap: (){}),
              const SizedBox(height: TSizes.spaceBtwItems,),
              const Divider(),

              Center(
                child: TextButton(onPressed: (){}, child: const Text("Close Account", style: TextStyle(color: Colors.red),) ,),

              ),

            ],
          ),
        ),
      ),
    );
  }
}
