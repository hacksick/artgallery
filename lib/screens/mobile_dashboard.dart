import 'package:flutter/material.dart';
import '../widgets/bottom_navbar.dart';
import '../widgets/header_mobile.dart';
import '../widgets/hero_section_mobile.dart';
import '../widgets/image_grid_mobile.dart';

class MobileDashboard extends StatelessWidget {
  const MobileDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          HeaderMobile(),
          HeroSectionMobile(),
          Expanded(child: ImageGridMobile()),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
