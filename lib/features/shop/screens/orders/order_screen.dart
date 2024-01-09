import 'package:t_ecommerce/exports.dart';
import 'package:t_ecommerce/features/shop/screens/orders/widget/order_list_items.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: Text("My Orders", style: Theme.of(context).textTheme.headlineSmall,), showBackButton: true,),
      body: const Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: OrderListItems(),
      ),
    );
  }
}
