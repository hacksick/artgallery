import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'web_dashboard.dart';
import 'mobile_dashboard.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const MobileDashboard(),
      tablet: const WebDashboard(),
      desktop: const WebDashboard(),
    );
  }
}
