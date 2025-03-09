import 'package:flutter/material.dart';
import 'package:shadow_boxing/gen/assets.gen.dart';

class BaseScaffold extends StatelessWidget {
  const BaseScaffold({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Assets.images.pageBg.provider(),
            fit: BoxFit.fill,
            opacity: 0.7,
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 24),
        child: child,
      ),
    );
  }
}
