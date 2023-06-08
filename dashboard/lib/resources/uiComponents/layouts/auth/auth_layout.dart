import 'package:dashboard/resources/uiComponents/layouts/auth/widgets/custom_title.dart';
import 'package:dashboard/resources/uiComponents/layouts/auth/widgets/twitter_background.dart';
import 'package:flutter/material.dart';

class AuthLayout extends StatelessWidget {
  final Widget child;
  const AuthLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        // Desktop
        _DesktopBody(
          child: child,
        )
        // Mobile
        // Links bottom bar
      ],
    ));
  }
}

class _DesktopBody extends StatelessWidget {
  final Widget child;
  const _DesktopBody({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height,
      color: Colors.red,
      child: Row(
        children: [
          // Background
          TwitterBackground(),

          Container(
            width: 600,
            height: double.infinity,
            color: Colors.black,
            child: Column(
              children: [
                SizedBox(height: 20),
                CustomTitle(),
                SizedBox(height: 50),
                Expanded(child: child),
              ],
            ),
          )
        ],
      ),
    );
  }
}
