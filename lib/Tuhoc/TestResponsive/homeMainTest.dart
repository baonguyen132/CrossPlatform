
import 'package:flutter/cupertino.dart';

import 'MyMobile.dart';
import 'layout_responsive.dart';
import 'myDesktop.dart';

class Homemaintest extends StatefulWidget {
  const Homemaintest({super.key});

  @override
  State<Homemaintest> createState() => _HomemaintestState();
}

class _HomemaintestState extends State<Homemaintest> {
  @override
  Widget build(BuildContext context) {
    return LayoutResponsive(myDesktop: MyDesktop(), myMobile: MyMobile()) ;
  }
}
