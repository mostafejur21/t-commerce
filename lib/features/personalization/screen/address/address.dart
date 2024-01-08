import 'package:t_ecommerce/exports.dart';
import 'package:t_ecommerce/features/personalization/screen/address/add_new_address.dart';
import 'package:t_ecommerce/features/personalization/screen/address/widget/single_address.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {Get.to(() => const AddNewAddress());},
        backgroundColor: TColors.primary,
        child: const Icon(Icons.add),
      ),
      appBar: const CustomAppbar(title: Text("Address"), showBackButton: true,),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              SingleAddress(selectedAddress: false),
              SingleAddress(selectedAddress: false),
              SingleAddress(selectedAddress: true),
            ],
          ),
        ),
      ),
    );
  }
}
