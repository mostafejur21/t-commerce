
import 'package:flutter/material.dart';
import 'package:t_ecommerce/common/widgets/custom_shape/curve_edge/curve_edge.dart';

class CustomClipShapeWidgets extends StatelessWidget {
  const CustomClipShapeWidgets({
    super.key,
    this.child,
  });
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomCurveEdges(),
      child: child,
    );
  }
}
