import 'package:flutter/material.dart';
import 'package:t_ecommerce/common/widgets/custom_shape/custom_clip_shape_widgets.dart';
import 'package:t_ecommerce/common/widgets/custom_shape/custom_container/primary_header_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomClipShapeWidgets(
              child: PrimaryHeader(child: Column(children: []),),
            ),
          ],
        ),
      ),
    );
  }
}
