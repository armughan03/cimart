import '../models/creditcards_item_model.dart';
import 'package:flutter/material.dart';
import 'package:test/core/app_export.dart';
import 'package:test/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class CreditcardsItemWidget extends StatelessWidget {
  CreditcardsItemWidget(
    this.creditcardsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CreditcardsItemModel creditcardsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.h),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 45.adaptSize,
            width: 45.adaptSize,
            padding: EdgeInsets.all(12.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgCreditCard1,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 5.v,
              bottom: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  creditcardsItemModelObj.cardType!,
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 4.v),
                Text(
                  creditcardsItemModelObj.secondary!,
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 28.h,
              top: 4.v,
              bottom: 3.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  creditcardsItemModelObj.bank!,
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 4.v),
                Text(
                  creditcardsItemModelObj.dBLBank!,
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30.h,
              top: 15.v,
              bottom: 16.v,
            ),
            child: Text(
              creditcardsItemModelObj.viewDetails!,
              style: CustomTextStyles.labelMediumIndigo500,
            ),
          ),
        ],
      ),
    );
  }
}
