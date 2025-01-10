
import 'package:flutter/cupertino.dart';

class LayoutResponsive extends StatefulWidget {

  final Widget myDesktop ;
  final Widget myMobile ;

  LayoutResponsive({super.key, required this.myDesktop , required this.myMobile});

  @override
  State<LayoutResponsive> createState() => _LayoutResponsiveState();
}

class _LayoutResponsiveState extends State<LayoutResponsive> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder:  (context, constraints) {
      if(constraints.maxWidth < 600){
        return widget.myMobile;
      }
      else {
        return widget.myDesktop;
      }
    },
    );
  }
}
