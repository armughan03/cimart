import '../models/balance2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:test/core/app_export.dart';

// ignore: must_be_immutable
class Balance2ItemWidget extends StatelessWidget {
  Balance2ItemWidget(
    this.balance2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Balance2ItemModel balance2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 86.h),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder17,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 17.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      balance2ItemModelObj.balance!,
                      style: theme.textTheme.labelMedium,
                    ),
                    SizedBox(height: 3.v),
                    Text(
                      balance2ItemModelObj.fiveThousandSevenHundredFiftyS!,
                      style: CustomTextStyles.titleMediumOnPrimary_1,
                    ),
                  ],
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgChipCard,
                  height: 29.adaptSize,
                  width: 29.adaptSize,
                  margin: EdgeInsets.only(
                    top: 4.v,
                    bottom: 3.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 17.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 20.h,
                right: 50.h,
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        balance2ItemModelObj.cardholder!,
                        style: theme.textTheme.labelMedium,
                      ),
                      SizedBox(height: 1.v),
                      Text(
                        balance2ItemModelObj.eddyCusuma!,
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
                          balance2ItemModelObj.validthru!,
                          style: theme.textTheme.labelMedium,
                        ),
                        SizedBox(height: 1.v),
                        Text(
                          balance2ItemModelObj.oneThousandTwoHundredTwentyTwo!,
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Text(
                    balance2ItemModelObj.thirtySevenMillionSevenHundred!,
                    style: CustomTextStyles.titleSmallOnPrimary_1,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgUserOnprimary,
                  height: 18.v,
                  width: 27.h,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
