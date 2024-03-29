import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

import '../curved_edges/curved_edges_widget.dart';
import 'circular_container.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CustomCurvedWIdget(
      child: Container(
        color: EColors.primary,
        child: SizedBox(
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: CircularContainer(
                    backgroundColor: EColors.white.withOpacity(0.1)),
              ),
              Positioned(
                top: 150,
                right: -310,
                child: CircularContainer(
                    backgroundColor: EColors.white.withOpacity(0.1)),
              ),
              child
            ],
          ),
        ),
      ),
    );
  }
}
