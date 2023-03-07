import 'package:flutter/material.dart';

import '../../res/images.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0.7, end: 1.1),
          duration: const Duration(milliseconds: 1200),
          curve: Curves.easeInOutBack,
          builder: (context, dynamic value, child) {
            return Transform.scale(
              scale: value,
              child: child,
            );
          },
          child: Image.asset(
            Images.logoBg,
            height: 300,
            width: 300,
          ),
        ),
      ),
    );
  }
}
