import '../loans_screen/widgets/loans_item_widget.dart';
import 'models/loans_item_model.dart';
import 'notifier/loans_notifier.dart';
import 'package:flutter/material.dart';
import 'package:test/core/app_export.dart';
import 'package:test/widgets/app_bar/appbar_leading_image.dart';
import 'package:test/widgets/app_bar/appbar_title.dart';
import 'package:test/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:test/widgets/app_bar/custom_app_bar.dart';
import 'package:test/widgets/custom_outlined_button.dart';
import 'package:test/widgets/custom_search_view.dart';

class LoansScreen extends ConsumerStatefulWidget {
  const LoansScreen({Key? key})
      : super(
          key: key,
        );

  @override
  LoansScreenState createState() => LoansScreenState();
}

class LoansScreenState extends ConsumerState<LoansScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildHeader(context),
              SizedBox(height: 24.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 24.h,
                      bottom: 5.v,
                    ),
                    child: Column(
                      children: [
                        _buildLoans(context),
                        SizedBox(height: 25.v),
                        _buildActiveLoansOverview(context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHeader(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 7.v),
      decoration: AppDecoration.white,
      child: Column(
        children: [
          CustomAppBar(
            leadingWidth: 48.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgMegaphone,
              margin: EdgeInsets.only(
                left: 24.h,
                top: 5.v,
                bottom: 6.v,
              ),
            ),
            centerTitle: true,
            title: AppbarTitle(
              text: "lbl_loans".tr,
            ),
            actions: [
              AppbarTrailingCircleimage(
                imagePath: ImageConstant.imgEllipse37,
                margin: EdgeInsets.symmetric(horizontal: 24.h),
              ),
            ],
          ),
          SizedBox(height: 20.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            child: Consumer(
              builder: (context, ref, _) {
                return CustomSearchView(
                  controller: ref.watch(loansNotifier).searchController,
                  hintText: "msg_search_for_something".tr,
                );
              },
            ),
          ),
          SizedBox(height: 13.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLoans(BuildContext context) {
    return SizedBox(
      height: 85.v,
      child: Consumer(
        builder: (context, ref, _) {
          return ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 24.h,
              );
            },
            itemCount:
                ref.watch(loansNotifier).loansModelObj?.loansItemList.length ??
                    0,
            itemBuilder: (context, index) {
              LoansItemModel model = ref
                      .watch(loansNotifier)
                      .loansModelObj
                      ?.loansItemList[index] ??
                  LoansItemModel();
              return LoansItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildActiveLoansOverview(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "msg_active_loans_overview".tr,
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 14.v),
        Container(
          margin: EdgeInsets.only(right: 24.h),
          padding: EdgeInsets.symmetric(
            horizontal: 21.h,
            vertical: 16.v,
          ),
          decoration: AppDecoration.white.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder17,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(right: 34.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "lbl_loan_money".tr,
                        style: CustomTextStyles.labelLargeBluegray40001,
                      ),
                      Text(
                        "lbl_left_to_repay".tr,
                        style: CustomTextStyles.labelLargeBluegray40001,
                      ),
                      Text(
                        "lbl_repay".tr,
                        style: CustomTextStyles.labelLargeBluegray40001,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 4.v),
              Divider(),
              SizedBox(height: 10.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 6.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "lbl_100_000".tr,
                      style: CustomTextStyles.bodySmallBluegray900,
                    ),
                  ),
                  Spacer(
                    flex: 46,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 6.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "lbl_40_500".tr,
                      style: CustomTextStyles.bodySmallBluegray900,
                    ),
                  ),
                  Spacer(
                    flex: 53,
                  ),
                  CustomOutlinedButton(
                    width: 70.h,
                    text: "lbl_repay".tr,
                  ),
                ],
              ),
              SizedBox(height: 10.v),
              Divider(),
              SizedBox(height: 10.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 6.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "lbl_500_000".tr,
                      style: CustomTextStyles.bodySmallBluegray900,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 6.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "lbl_250_000".tr,
                      style: CustomTextStyles.bodySmallBluegray900,
                    ),
                  ),
                  CustomOutlinedButton(
                    width: 70.h,
                    text: "lbl_repay".tr,
                  ),
                ],
              ),
              SizedBox(height: 10.v),
              Divider(),
              SizedBox(height: 10.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 6.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "lbl_900_000".tr,
                      style: CustomTextStyles.bodySmallBluegray900,
                    ),
                  ),
                  Spacer(
                    flex: 45,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 6.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "lbl_40_500".tr,
                      style: CustomTextStyles.bodySmallBluegray900,
                    ),
                  ),
                  Spacer(
                    flex: 54,
                  ),
                  CustomOutlinedButton(
                    width: 70.h,
                    text: "lbl_repay".tr,
                  ),
                ],
              ),
              SizedBox(height: 10.v),
              Divider(),
              SizedBox(height: 10.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 6.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "lbl_50_000".tr,
                      style: CustomTextStyles.bodySmallBluegray900,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 6.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "lbl_40_500".tr,
                      style: CustomTextStyles.bodySmallBluegray900,
                    ),
                  ),
                  CustomOutlinedButton(
                    width: 70.h,
                    text: "lbl_repay".tr,
                  ),
                ],
              ),
              SizedBox(height: 10.v),
              Divider(),
              SizedBox(height: 10.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 6.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "lbl_50_000".tr,
                      style: CustomTextStyles.bodySmallBluegray900,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 6.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "lbl_40_500".tr,
                      style: CustomTextStyles.bodySmallBluegray900,
                    ),
                  ),
                  CustomOutlinedButton(
                    width: 70.h,
                    text: "lbl_repay".tr,
                  ),
                ],
              ),
              SizedBox(height: 10.v),
              Divider(),
              SizedBox(height: 10.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 6.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "lbl_80_000".tr,
                      style: CustomTextStyles.bodySmallBluegray900,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 6.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "lbl_25_500".tr,
                      style: CustomTextStyles.bodySmallBluegray900,
                    ),
                  ),
                  CustomOutlinedButton(
                    width: 70.h,
                    text: "lbl_repay".tr,
                  ),
                ],
              ),
              SizedBox(height: 10.v),
              Divider(),
              SizedBox(height: 10.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 6.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "lbl_12_000".tr,
                      style: CustomTextStyles.bodySmallBluegray900,
                    ),
                  ),
                  Spacer(
                    flex: 46,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 6.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "lbl_5_500".tr,
                      style: CustomTextStyles.bodySmallBluegray900,
                    ),
                  ),
                  Spacer(
                    flex: 53,
                  ),
                  CustomOutlinedButton(
                    width: 70.h,
                    text: "lbl_repay".tr,
                  ),
                ],
              ),
              SizedBox(height: 10.v),
              Divider(),
              SizedBox(height: 10.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 6.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "lbl_160_000".tr,
                      style: CustomTextStyles.bodySmallBluegray900,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 6.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "lbl_100_800".tr,
                      style: CustomTextStyles.bodySmallBluegray900,
                    ),
                  ),
                  CustomOutlinedButton(
                    width: 70.h,
                    text: "lbl_repay".tr,
                  ),
                ],
              ),
              SizedBox(height: 10.v),
              Divider(),
              SizedBox(height: 6.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_total".tr,
                          style: CustomTextStyles.labelLargeRed700,
                        ),
                        SizedBox(height: 5.v),
                        Text(
                          "lbl_125_0000".tr,
                          style: CustomTextStyles.labelLargeRed700,
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 43.h,
                        top: 20.v,
                      ),
                      child: Text(
                        "lbl_750_000".tr,
                        style: CustomTextStyles.labelLargeRed700,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
