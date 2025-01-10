import 'package:flutter/cupertino.dart';

class LayoutResponesive extends StatelessWidget {
  late final Widget mobileBody ;
  late final Widget webBody ;

  LayoutResponesive({super.key, required this.mobileBody , required this.webBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {

        if(constraints.maxWidth < 600) {
          return mobileBody ;
        }
        else {
          return webBody ;
        }

    });
  }
}
