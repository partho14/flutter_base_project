import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReusableCachedImage extends StatelessWidget {
  const ReusableCachedImage({
    Key? key,
    required this.photo,
    this.errorIcon,
    this.errorIconSize = 80.0,
    this.shape = BoxShape.rectangle,
  }) : super(key: key);

  final String photo;
  final Widget? errorIcon;
  final double errorIconSize;
  final BoxShape shape;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: photo,
      imageBuilder: (context, imageProvider) => Container(
        decoration: BoxDecoration(
          shape: shape,
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover,
          ),
        ),
      ),
      progressIndicatorBuilder: (_,__,___) => const Center(child: SizedBox(height: 30, width: 30, child: CupertinoActivityIndicator())),
      errorWidget: (_,__,___) => Center(
        child: errorIcon ?? Icon(
          Icons.image,
          size: errorIconSize,
        ),
      ),
    );
  }
}
