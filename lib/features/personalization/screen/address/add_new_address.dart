import 'package:t_ecommerce/exports.dart';

class AddNewAddress extends StatelessWidget {
  const AddNewAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        title: Text("Add New Address"),
        showBackButton: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Name",
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
                const SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Phone Number",
                    prefixIcon: Icon(Iconsax.mobile),
                  ),
                ),
                const SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: "Street",
                          prefixIcon: Icon(Iconsax.building_3),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: TSizes.spaceBtwItems,
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: "Zip code",
                          prefixIcon: Icon(Iconsax.code4),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: "Country",
                          prefixIcon: Icon(Iconsax.global),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: TSizes.spaceBtwItems,
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: "State",
                          prefixIcon: Icon(Iconsax.activity),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("Save"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
