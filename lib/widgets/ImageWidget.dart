import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  final String? imageUrl;
  final double height;
  final double width;
  final double borderRadius;
  final double padding;
  final Color backgroundColor;
  final bool isBorderAll;
  const ImageWidget({
    Key? key,
    required this.imageUrl,
    required this.height,
    required this.width,
    required this.borderRadius,
    this.padding = 2.0,
    this.backgroundColor = const Color(0xFFE0E0E0),
    this.isBorderAll = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (imageUrl == null || imageUrl == "") {
      return Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: isBorderAll
              ? BorderRadius.circular(borderRadius)
              : BorderRadius.only(
                  topLeft: Radius.circular(borderRadius),
                  topRight: Radius.circular(borderRadius),
                  bottomLeft: const Radius.circular(0),
                  bottomRight: const Radius.circular(0),
                ),
        ),
        padding: EdgeInsets.all(padding),
      );
    }
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: isBorderAll
            ? BorderRadius.circular(borderRadius)
            : BorderRadius.only(
                topLeft: Radius.circular(borderRadius),
                topRight: Radius.circular(borderRadius),
                bottomLeft: const Radius.circular(0),
                bottomRight: const Radius.circular(0),
              ),
      ),
      padding: EdgeInsets.all(padding),
      child: CachedNetworkImage(
        imageUrl: imageUrl!,
        imageBuilder: (context, imageProvider) => Container(
          decoration: BoxDecoration(
            borderRadius: isBorderAll
                ? BorderRadius.circular(borderRadius)
                : BorderRadius.only(
                    topLeft: Radius.circular(borderRadius),
                    topRight: Radius.circular(borderRadius),
                    bottomLeft: const Radius.circular(0),
                    bottomRight: const Radius.circular(0),
                  ),
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.cover,
            ),
          ),
        ),
        placeholder: (context, url) => const SizedBox(),
        errorWidget: (context, url, error) => const Center(
          child: SizedBox.shrink(),
        ),
      ),
    );
  }
}
