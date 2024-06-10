import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/constants/size.dart';

class TCircularImage extends StatelessWidget {
  const TCircularImage({
    Key? key,
    required this.image,
    this.fit = BoxFit.cover,
    this.isNetworkImage = false,
    this.overlayColor,
    this.backgroundColor,
    this.width = 56.0,
    this.height = 56.0,
    this.padding = TSize.sm,
  }) : super(key: key);

  final BoxFit fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width;
  final double height;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(100)),
      child: ClipOval(
        child: isNetworkImage
            ? Image.network(
                image,
                fit: fit,
                width: width,
                height: height,
                color: overlayColor,
                colorBlendMode: overlayColor != null ? BlendMode.overlay : null,
              )
            : Image.asset(
                image,
                fit: fit,
                width: width,
                height: height,
                color: overlayColor,
                colorBlendMode: overlayColor != null ? BlendMode.overlay : null,
              ),
      ),
    );
  }
}
