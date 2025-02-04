import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'productlist_item_model.dart';

class WishlistModel extends Equatable {
  WishlistModel({this.productlistItemList = const []});

  List<ProductlistItemModel> productlistItemList;

  WishlistModel copyWith({
    List<ProductlistItemModel>? productlistItemList,
  }) {
    return WishlistModel(
      productlistItemList: productlistItemList ?? this.productlistItemList,
    );
  }

  @override
  List<Object?> get props {
    return [
      productlistItemList,
    ];
  }
}
