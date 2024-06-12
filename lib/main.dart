import 'dart:ui';

import 'package:ajay_app/dashboard.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp ({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: MobileLikeScrollBehaviour(),
      home: Dashboard(),
    );
  }
}
class MobileLikeScrollBehaviour extends MaterialScrollBehavior{
@override
  // TODO: implement dragDevices
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
  };
}