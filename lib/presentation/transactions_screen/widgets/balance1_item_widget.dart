import '../models/balance1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:test/core/app_export.dart';

// ignore: must_be_immutable
class Balance1ItemWidget extends StatelessWidget {
  Balance1ItemWidget(
    this.balance1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Balance1ItemModel balance1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder17,
      ),
      width: 265.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 17.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    balance1ItemModelObj.balance!,
                    style: theme.textTheme.labelMedium,
                  ),
                  SizedBox(height: 3.v),
                  Text(
                    balance1ItemModelObj.price!,
                    style: CustomTextStyles.titleMediumOnPrimary_1,
                  ),
                ],
              ),
              CustomImageView(
                imagePath: ImageConstant.imgChipCard,
                height: 29.adaptSize,
                width: 29.adaptSize,
                margin: EdgeInsets.only(
                  left: 141.h,
                  top: 4.v,
                  bottom: 3.v,
                ),
              ),
            ],
          ),
          SizedBox(height: 17.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        balance1ItemModelObj.cardholder!,
                        style: theme.textTheme.labelMedium,
                      ),
                      SizedBox(height: 1.v),
                      Text(
                        balance1ItemModelObj.eddyCusuma!,
                        style: CustomTextStyles.titleSmallOnPrimary,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 41.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          balance1ItemModelObj.validthru!,
                          style: theme.textTheme.labelMedium,
                        ),
                        SizedBox(height: 1.v),
                        Text(
                          balance1ItemModelObj.oneThousandTwoHundredTwentyTwo!,
                          style: CustomTextStyles.titleSmallOnPrimary,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 11.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 16.v,
            ),
            decoration: AppDecoration.gradientOnPrimaryToOnPrimary.copyWith(
              borderRadius: BorderRadiusStyle.customBorderBL15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Text(
                    balance1ItemModelObj.thirtySevenMillionSevenHundred!,
                    style: CustomTextStyles.titleSmallOnPrimary_1,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgUserOnprimary,
                  height: 18.v,
                  width: 27.h,
                  margin: EdgeInsets.only(left: 60.h),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
