import 'package:cross_platform/Tuhoc/responsive/web_body.dart';
import 'package:flutter/material.dart';

import 'layout_responesive.dart';
import 'mobile_body.dart';

class HomeResponsive extends StatefulWidget {
  const HomeResponsive({super.key});

  @override
  State<HomeResponsive> createState() => _HomeResponsiveState();
}

class _HomeResponsiveState extends State<HomeResponsive> {
  @override
  Widget build(BuildContext context) {

    return LayoutResponesive(
      mobileBody: const MobileBody(),
      webBody: const WebBody(),
    ) ;
  }
}
