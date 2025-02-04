import '../../../core/app_export.dart';

class ProductlistItemModel {
  ProductlistItemModel({
    this.runningShoes,
    this.runningShoes1,
    this.runningShoes2,
    this.fortyElve,
    this.reviews,
    this.price,
    this.id,
  }) {
    runningShoes = runningShoes ?? ImageConstant.imgImage57;
    runningShoes1 = runningShoes1 ?? ImageConstant.imgCheckmarkWhiteA700;
    runningShoes2 = runningShoes2 ?? "lbl_running_shoes".tr;
    fortyElve = fortyElve ?? "lbl_41".tr;
    reviews = reviews ?? "lbl_5_reviews".tr;
    id = id ?? "";
  }

  String runningShoes;
  String runningShoes1;
  String runningShoes2;
  String fortyElve;
  String reviews;
  String price;
  String id;

  ProductlistItemModel copyWith({
    String? runningShoes,
    String? runningShoes1,
    String? runningShoes2,
    String? fortyElve,
    String? reviews,
    String? price,
    String? id,
  }) {
    return ProductlistItemModel(
      runningShoes: runningShoes ?? this.runningShoes,
      runningShoes1: runningShoes1 ?? this.runningShoes1,
      runningShoes2: runningShoes2 ?? this.runningShoes2,
      fortyElve: fortyElve ?? this.fortyElve,
      reviews: reviews ?? this.reviews,
      price: price ?? this.price,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props {
    return [
      runningShoes,
      runningShoes1,
      runningShoes2,
      fortyElve,
      reviews,
      price,
      id,
    ];
  }
}
