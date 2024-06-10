import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: TColors.Primary,
              padding: const EdgeInsets.all(0),
              child: Stack(
                children: [
                  TCircularContainer(
                    backgroundColor: TColors.textwhite.withOpacity(0.1),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TCircularContainer extends StatelessWidget {
  const TCircularContainer({
    Key? key,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.padding = 0,
    this.margin,
    this.child,
    this.backgroundColor = const Color(0xFFFFFFFF),
  }) : super(key: key);

  final double width;
  final double height;
  final double radius;
  final double padding;
  final EdgeInsets? margin;
  final Widget? child; // Corrected from 'widget?' to 'Widget?'
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: margin,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor.withOpacity(0.1),
      ),
      child: child,
    );
  }
}
