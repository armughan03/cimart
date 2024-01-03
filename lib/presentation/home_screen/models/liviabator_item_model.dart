import '../../../core/app_export.dart';

/// This class is used in the [liviabator_item_widget] screen.
class LiviabatorItemModel {
  LiviabatorItemModel({
    this.liviaBator,
    this.liviaBator1,
    this.ceo,
    this.id,
  }) {
    liviaBator = liviaBator ?? ImageConstant.imgEllipse18;
    liviaBator1 = liviaBator1 ?? "Livia Bator";
    ceo = ceo ?? "CEO";
    id = id ?? "";
  }

  String? liviaBator;

  String? liviaBator1;

  String? ceo;

  String? id;
}
