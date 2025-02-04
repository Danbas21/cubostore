part of 'wishlist_notifier.dart';



import 'package:equatable/equatable.dart';

class WishlistState extends Equatable{
WishlistState ({this.searchController, this.wishListModelObj});

TextEditingController? searchController;
WishlistModel? wishListModelObj;

@override
List<Object?> get props => [searchController, wishListModelObj];
WishlistState copyWith({ TextEditingController? searchController, WishlistModel? wishListModelObj}){
return WishlistState(
searchController: searchController ?? this.searchController,
wishListModelObj: wishListModelObj ?? this.wishListModelObj,
);
}

}