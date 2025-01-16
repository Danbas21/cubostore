import 'package:freezed_annotation/freezed_annotation.dart';

part 'selection_popup_model.freezed.dart';

@freezed
class SelectionPopupModel with _$SelectionPopupModel {
  const factory SelectionPopupModel({
    int? id,
    required String title,
    dynamic value,
    @Default(false) bool isSelected,
  }) = _SelectionPopupModel;
}
