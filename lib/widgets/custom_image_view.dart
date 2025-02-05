import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'dart:io';

extension ImageTypeExtension on String {
  ImageType get imageType {
    if (startsWith('http') || startsWith('https')) {
      return ImageType.network;
    } else if (endsWith('.svg')) {
      return ImageType.svg;
    } else if (startsWith('file://')) {
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
        case ImageType.svg:
          return SizedBox(
            width: width,
            height: height,
            child: SvgPicture.asset(
              imagePath!,
              width: width,
              height: height,
              fit: fit ?? BoxFit.contain,
              colorFilter: color != null
                  ? ColorFilter.mode(color!, BlendMode.srcIn)
                  : null,
            ),
          );
        case ImageType.file:
          return Image.file(
            File(imagePath!),
            width: width,
            height: height,
            fit: fit ?? BoxFit.contain,
            color: color,
          );
        case ImageType.network:
          return CachedNetworkImage(
            imageUrl: imagePath!,
            width: width,
            height: height,
            fit: fit ?? BoxFit.contain,
            color: color,
            placeholder: (context, url) => SizedBox(
              width: 30,
              height: 30,
              child: LinearProgressIndicator(
                color: Colors.grey.shade200,
                backgroundColor: Colors.grey.shade100,
              ),
            ),
            errorWidget: (context, url, error) => Image.asset(
              placeHolder,
              width: width,
              height: height,
              fit: fit ?? BoxFit.contain,
              color: color,
            ),
          );
        case ImageType.png:
        default:
          Image.asset(
            imagePath!,
            width: width,
            height: height,
            fit: fit ?? BoxFit.contain,
            color: color,
          );
      }
      () {};
    }
  }
}
