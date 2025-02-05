import 'package:flutter/material.dart';


extension ImageTypeExtension on String {
  ImageType get imageType {
   if (this.startsWith('http') || this.startsWith('https')) {
      return ImageType.network;
    } else if (this.endsWith('.svg')) {
      return ImageType.svg;
    } else if (this.endsWith('.png')) {
      return ImageType.png;
    } else {
      return ImageType.file;
    }
  }
}


enum ImageType { svg, png, network, file, unknown }

class CustomImageView extends StatelessWidget {
  const CustomImageView({
    super.key,
    this.imagePath,
    this.width,
    this.height,
    this.fit,
    this.color,
    this.onTap,
    this.radius,
    this.alignment,
    this.margin,
    this.border,
    this.placeHolder = "assets/images/image_not_found.png",
  });

  final String? imagePath;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final Color? color;
  final VoidCallback? onTap;
  final BorderRadius? radius;
  final Alignment? alignment;
  final EdgeInsetsGeometry? margin;
  final Border? border;
  final String placeHolder;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(alignment: alignment!, child: _buildWidget())
        : _buildWidget();
  }

  Widget _buildWidget() {
    return Padding(
        padding: margin ?? EdgeInsets.zero,
        child: InkWell(
          onTap: onTap,
          child: _buildCircularImage(),
        ));
  }

  _buildCircularImage() {
    if (radius != null) {
      return ClipRRect(
        borderRadius: radius ?? BorderRadius.zero,
        child: _buildImageWithBorder(),
      );
    } else {
      return _buildImageWithBorder();
    }
  }

  _buildImageWithBorder() {
    if (border != null) {
      return Container(
        decoration: BoxDecoration(border: border),
        child: _buildImageView(),
      );
    } else {
      return _buildImageView();
    }
  }

  _buildImageView() {
if (imagePath != null) {
  switch (imagePath!.imageType) {
    case ImageType.svg:return Container (
height: height,
width: width,
child: SvgPicture.asset(
imagePath!,
width: width,
height: height,
fit: fit ?? BoxFit.contain,
colorFilter: this.color != null
? ColorFilter.mode(this.color!, BlendMode.srcIn) : null,
    )
  }
}
  }
}
