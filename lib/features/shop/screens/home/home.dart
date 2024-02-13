import 'package:ecommerce_app/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:flutter/material.dart';

import 'widgets/home_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: PrimaryHeaderContainer(
          child: Column(
            children: [
              /// app bar
              HomeAppBar(),

              /// search bar
              /// categories
            ],
          ),
        ),
      ),
    );
  }
}
