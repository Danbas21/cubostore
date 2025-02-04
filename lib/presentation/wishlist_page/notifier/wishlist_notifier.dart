import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/app_export.dart';
import '../models/productlist_item_model.dart';
import '../models/wishlist_model.dart';

part 'wishlist_state.dart';

final wishlistNotifier =
    StateNotifierProvider.autoDispose<WishlistNotifier, WishlistState>(
  (ref) => WishlistNotifier(
    WishlistState(
      searchController: TextEditingController(),
      wishListModelObj: WishlistModel(
        productlistItemList: [
          ProductlistItemModel(
            runningShoes: ImageConstant.imgImage57,
            runningShoes1: ImageConstant.imgCheckmarkWhiteA700,
            runningShoes2: "lbl_running_shoes".tr,
            fortyElve: "lbl_41".tr,
            reviews: "lbl_5_reviews".tr,
            price: "lbl_199".tr,
          ),
          ProductlistItemModel(
            runningShoes: ImageConstant.imgImage5788x88,
            runningShoes1: ImageConstant.imgPlay,
            runningShoes2: "lbl_running_shoes".tr,
            fortyElve: "lbl_41".tr,
            reviews: "lbl_5_reviews".tr,
            price: "lbl_199".tr,
          ),
          ProductlistItemModel(
            runningShoes: ImageConstant.imgImage571,
            runningShoes1: ImageConstant.imgGroup14,
            runningShoes2: "lbl_running_shoes".tr,
            fortyElve: "lbl_41".tr,
            reviews: "lbl_5_reviews".tr,
            price: "lbl_199".tr,
          ),
        ],
      ),
    ),
  ),
);

class WishlistNotifier extends StateNotifier<WishlistState> {
  WishlistNotifier(WishlistState state) : super(state);
}
