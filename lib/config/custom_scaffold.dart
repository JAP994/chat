import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomScaffold extends StatelessWidget {
  final Widget body;
  final Color backgroundColor;
  final EdgeInsetsGeometry padding;

  const CustomScaffold({
    super.key,
    required this.body,
    this.backgroundColor = const Color.fromARGB(255, 218, 218, 218),
    this.padding = const EdgeInsets.symmetric(horizontal: 20.0),
    // 👆 padding general (20 px a los lados)
  });

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: backgroundColor,
        systemNavigationBarColor: backgroundColor,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        backgroundColor: backgroundColor,
        extendBody: true,
        body: Stack(
          children: [
            Opacity(
              opacity: 0.2,
              child: Image.asset(
                'assets/images/mancha.png',
                height: double.infinity,
                fit: BoxFit.fitHeight,
              ),
            ),
            SafeArea(
              top: true,
              bottom: false,
              child: Padding(
                padding: padding, // 👈 aplica el padding a todo el contenido
                child: body,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
