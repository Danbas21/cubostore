import 'package:cubostore/core/theme/app_decoratrion.dart';
import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/productlist_item_model.dart';

class ProductlistItemWidget extends StatelessWidget {
  const ProductlistItemWidget({super.key, this.productlistItemModelObj});

  final ProductlistItemModel? productlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.zero,
            color: appTheme.gray100,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.roundedBorder16,
            ),
            child: Container(
                width: 88,
                height: 88,
                decoration: AppDecoration.neutral200.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      image: productlistItemModelObj?.runningShoes ?? "",
                      width: 88.h,
                      height: 88.h,
                    ),
                    CustomImageView(
                      image: productlistItemModelObj?.runningShoes1 ?? "",
                      width: 36.h,
                      height: 42.h,
                    ),
                  ],
                )),
          ),
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              productlistItemModelObj?.runningShoes2!,
              style: CustomTextStyle.bodySmallPrimary,
            ),
            SizedBox(
              width: double.maxFinite,
              child: Row(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [],
                  )
                ],
              ),
            )
          ],
        ))
      ],
    );
  }
}
