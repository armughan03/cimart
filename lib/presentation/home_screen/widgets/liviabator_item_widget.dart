import '../models/liviabator_item_model.dart';
import 'package:flutter/material.dart';
import 'package:test/core/app_export.dart';

// ignore: must_be_immutable
class LiviabatorItemWidget extends StatelessWidget {
  LiviabatorItemWidget(
    this.liviabatorItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  LiviabatorItemModel liviabatorItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60.h,
      child: Column(
        children: [
          CustomImageView(
            imagePath: liviabatorItemModelObj?.liviaBator,
            height: 50.adaptSize,
            width: 50.adaptSize,
            radius: BorderRadius.circular(
              25.h,
            ),
          ),
          SizedBox(height: 9.v),
          Text(
            liviabatorItemModelObj.liviaBator1!,
            style: CustomTextStyles.bodySmallBluegray900,
          ),
          SizedBox(height: 4.v),
          Text(
            liviabatorItemModelObj.ceo!,
            style: CustomTextStyles.labelMediumBluegray40001,
          ),
        ],
      ),
    );
  }
}
