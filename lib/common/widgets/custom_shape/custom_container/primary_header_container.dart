
import 'package:flutter/material.dart';
import 'package:t_ecommerce/common/widgets/custom_shape/custom_clip_shape_widgets.dart';
import 'package:t_ecommerce/common/widgets/custom_shape/custom_container/circular_container.dart';
import 'package:t_ecommerce/utils/constants/colors.dart';

class PrimaryHeader extends StatelessWidget {
  const PrimaryHeader({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return CustomClipShapeWidgets(
      child: Container(
        color: TColors.primary,
        padding: const EdgeInsets.all(0),
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -250,
              child: CircularContainer(
                backgroundColor: TColors.white.withOpacity(0.1),
              ),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: CircularContainer(
                backgroundColor: TColors.white.withOpacity(0.1),
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
