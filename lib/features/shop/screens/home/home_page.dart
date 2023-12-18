import 'package:flutter/material.dart';
import 'package:t_ecommerce/common/widgets/custom_shape/custom_container/primary_header_container.dart';
import 'package:t_ecommerce/features/shop/screens/home/widgets/home_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeader(
              child: Column(
                children: [
                  HomeAppBar(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
