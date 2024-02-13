import 'package:flutter/material.dart';

import 'curved_edge.dart';

class CustomCurvedWIdget extends StatelessWidget {
  const CustomCurvedWIdget({
    super.key,
    this.child,
  });
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: CustomCurvedEdge(), child: child);
  }
}
