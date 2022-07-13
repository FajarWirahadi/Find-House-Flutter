import 'package:flutter/material.dart';
import 'package:bwa_cozy/pages/splash_page.dart';
import 'package:provider/provider.dart';
import 'package:bwa_cozy/providers/space_providers.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => SpaceProvider(),
    child: MaterialApp(
      home: SplashPage(),
    ),
    );
  }
}