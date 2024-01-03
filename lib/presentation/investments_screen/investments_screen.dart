import '../investments_screen/widgets/applestore_item_widget.dart';
import '../investments_screen/widgets/moneybagofdollars_item_widget.dart';
import 'models/applestore_item_model.dart';
import 'models/moneybagofdollars_item_model.dart';
import 'notifier/investments_notifier.dart';
import 'package:flutter/material.dart';
import 'package:test/core/app_export.dart';
import 'package:test/widgets/app_bar/appbar_leading_image.dart';
import 'package:test/widgets/app_bar/appbar_title.dart';
import 'package:test/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:test/widgets/app_bar/custom_app_bar.dart';
import 'package:test/widgets/custom_search_view.dart';

class InvestmentsScreen extends ConsumerStatefulWidget {
  const InvestmentsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  InvestmentsScreenState createState() => InvestmentsScreenState();
}

class InvestmentsScreenState extends ConsumerState<InvestmentsScreen> {
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
                      right: 24.h,
                      bottom: 5.v,
                    ),
                    child: Column(
                      children: [
                        _buildMoneyBagOfDollars(context),
                        SizedBox(height: 27.v),
                        _buildMonthlyRevenue(
                          context,
                          monthlyRevenue: "msg_yearly_total_investment".tr,
                          price1: "lbl_40_000".tr,
                          price2: "lbl_30_000".tr,
                          price3: "lbl_20_000".tr,
                          price4: "lbl_10_000".tr,
                          price5: "lbl_02".tr,
                          groupImage: ImageConstant.imgGroup1045,
                          zipcode1: "lbl_2016".tr,
                          zipcode2: "lbl_2017".tr,
                          zipcode3: "lbl_2018".tr,
                          zipcode4: "lbl_2019".tr,
                          zipcode5: "lbl_2020".tr,
                          zipcode6: "lbl_2021".tr,
                        ),
                        SizedBox(height: 27.v),
                        _buildMonthlyRevenue(
                          context,
                          monthlyRevenue: "lbl_monthly_revenue".tr,
                          price1: "lbl_40_000".tr,
                          price2: "lbl_30_000".tr,
                          price3: "lbl_20_000".tr,
                          price4: "lbl_10_000".tr,
                          price5: "lbl_02".tr,
                          groupImage: ImageConstant.imgGroup1049,
                          zipcode1: "lbl_2016".tr,
                          zipcode2: "lbl_2017".tr,
                          zipcode3: "lbl_2018".tr,
                          zipcode4: "lbl_2019".tr,
                          zipcode5: "lbl_2020".tr,
                          zipcode6: "lbl_2021".tr,
                        ),
                        SizedBox(height: 27.v),
                        _buildMyInvestment(context),
                        SizedBox(height: 27.v),
                        _buildTrendingStock(context),
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
              text: "lbl_investments".tr,
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
                  controller: ref.watch(investmentsNotifier).searchController,
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
  Widget _buildMoneyBagOfDollars(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 16.v,
            );
          },
          itemCount: ref
                  .watch(investmentsNotifier)
                  .investmentsModelObj
                  ?.moneybagofdollarsItemList
                  .length ??
              0,
          itemBuilder: (context, index) {
            MoneybagofdollarsItemModel model = ref
                    .watch(investmentsNotifier)
                    .investmentsModelObj
                    ?.moneybagofdollarsItemList[index] ??
                MoneybagofdollarsItemModel();
            return MoneybagofdollarsItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildMyInvestment(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_my_investment".tr,
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 12.v),
        Consumer(
          builder: (context, ref, _) {
            return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 10.v,
                );
              },
              itemCount: ref
                      .watch(investmentsNotifier)
                      .investmentsModelObj
                      ?.applestoreItemList
                      .length ??
                  0,
              itemBuilder: (context, index) {
                ApplestoreItemModel model = ref
                        .watch(investmentsNotifier)
                        .investmentsModelObj
                        ?.applestoreItemList[index] ??
                    ApplestoreItemModel();
                return ApplestoreItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTrendingStock(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_trending_stock".tr,
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 12.v),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 15.v,
          ),
          decoration: AppDecoration.white.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder17,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 18.h),
                    child: Row(
                      children: [
                        Text(
                          "lbl_sl_no".tr,
                          style: CustomTextStyles.labelLargeBluegray40001,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 19.h),
                          child: Text(
                            "lbl_name".tr,
                            style: CustomTextStyles.labelLargeBluegray40001,
                          ),
                        ),
                        Spacer(
                          flex: 52,
                        ),
                        Text(
                          "lbl_price".tr,
                          style: CustomTextStyles.labelLargeBluegray40001,
                        ),
                        Spacer(
                          flex: 47,
                        ),
                        Text(
                          "lbl_return".tr,
                          style: CustomTextStyles.labelLargeBluegray40001,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Divider(
                    color: appTheme.gray100,
                  ),
                ],
              ),
              SizedBox(height: 10.v),
              Padding(
                padding: EdgeInsets.only(right: 32.h),
                child: _buildFour(
                  context,
                  dynamicText1: "lbl_01".tr,
                  dynamicText2: "lbl_trivago".tr,
                  dynamicText3: "lbl_520".tr,
                  dynamicText4: "lbl_5".tr,
                ),
              ),
              SizedBox(height: 16.v),
              Padding(
                padding: EdgeInsets.only(right: 26.h),
                child: Row(
                  children: [
                    Text(
                      "lbl_022".tr,
                      style: CustomTextStyles.bodySmallBluegray600,
                    ),
                    Spacer(
                      flex: 24,
                    ),
                    Text(
                      "lbl_canon".tr,
                      style: CustomTextStyles.bodySmallBluegray600,
                    ),
                    Spacer(
                      flex: 39,
                    ),
                    Text(
                      "lbl_480".tr,
                      style: CustomTextStyles.bodySmallBluegray600,
                    ),
                    Spacer(
                      flex: 36,
                    ),
                    Text(
                      "lbl_10".tr,
                      style: CustomTextStyles.labelLargeTealA400,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 17.v),
              Padding(
                padding: EdgeInsets.only(right: 35.h),
                child: Row(
                  children: [
                    Text(
                      "lbl_03".tr,
                      style: CustomTextStyles.bodySmallBluegray600,
                    ),
                    Spacer(
                      flex: 28,
                    ),
                    Text(
                      "lbl_uber_food".tr,
                      style: CustomTextStyles.bodySmallBluegray600,
                    ),
                    Spacer(
                      flex: 27,
                    ),
                    Text(
                      "lbl_350".tr,
                      style: CustomTextStyles.bodySmallBluegray600,
                    ),
                    Spacer(
                      flex: 43,
                    ),
                    Text(
                      "lbl_32".tr,
                      style: CustomTextStyles.labelLargePinkA200,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 17.v),
              Padding(
                padding: EdgeInsets.only(right: 32.h),
                child: _buildFour(
                  context,
                  dynamicText1: "lbl_04".tr,
                  dynamicText2: "lbl_nokia".tr,
                  dynamicText3: "lbl_940".tr,
                  dynamicText4: "lbl_22".tr,
                ),
              ),
              SizedBox(height: 17.v),
              Padding(
                padding: EdgeInsets.only(right: 29.h),
                child: Row(
                  children: [
                    Text(
                      "lbl_05".tr,
                      style: CustomTextStyles.bodySmallBluegray600,
                    ),
                    Spacer(
                      flex: 24,
                    ),
                    Text(
                      "lbl_tiktok".tr,
                      style: CustomTextStyles.bodySmallBluegray600,
                    ),
                    Spacer(
                      flex: 39,
                    ),
                    Text(
                      "lbl_670".tr,
                      style: CustomTextStyles.bodySmallBluegray600,
                    ),
                    Spacer(
                      flex: 36,
                    ),
                    Text(
                      "lbl_12".tr,
                      style: CustomTextStyles.labelLargePinkA200,
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

  /// Common widget
  Widget _buildMonthlyRevenue(
    BuildContext context, {
    required String monthlyRevenue,
    required String price1,
    required String price2,
    required String price3,
    required String price4,
    required String price5,
    required String groupImage,
    required String zipcode1,
    required String zipcode2,
    required String zipcode3,
    required String zipcode4,
    required String zipcode5,
    required String zipcode6,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          monthlyRevenue,
          style: theme.textTheme.titleMedium!.copyWith(
            color: appTheme.blueGray900,
          ),
        ),
        SizedBox(height: 12.v),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 19.h,
            vertical: 15.v,
          ),
          decoration: AppDecoration.white.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder17,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 2.v,
                  bottom: 20.v,
                ),
                child: Column(
                  children: [
                    Text(
                      price1,
                      style: theme.textTheme.bodySmall!.copyWith(
                        color: appTheme.blueGray40001,
                      ),
                    ),
                    SizedBox(height: 24.v),
                    Text(
                      price2,
                      style: theme.textTheme.bodySmall!.copyWith(
                        color: appTheme.blueGray40001,
                      ),
                    ),
                    SizedBox(height: 24.v),
                    Text(
                      price3,
                      style: theme.textTheme.bodySmall!.copyWith(
                        color: appTheme.blueGray40001,
                      ),
                    ),
                    SizedBox(height: 24.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        price4,
                        style: theme.textTheme.bodySmall!.copyWith(
                          color: appTheme.blueGray40001,
                        ),
                      ),
                    ),
                    SizedBox(height: 23.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        price5,
                        style: theme.textTheme.bodySmall!.copyWith(
                          color: appTheme.blueGray40001,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 5.h,
                    top: 13.v,
                  ),
                  child: Column(
                    children: [
                      CustomImageView(
                        imagePath: groupImage,
                        height: 157.v,
                        width: 232.h,
                      ),
                      SizedBox(height: 8.v),
                      Padding(
                        padding: EdgeInsets.only(right: 3.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              zipcode1,
                              style: theme.textTheme.bodySmall!.copyWith(
                                color: appTheme.blueGray40001,
                              ),
                            ),
                            Text(
                              zipcode2,
                              style: theme.textTheme.bodySmall!.copyWith(
                                color: appTheme.blueGray40001,
                              ),
                            ),
                            Text(
                              zipcode3,
                              style: theme.textTheme.bodySmall!.copyWith(
                                color: appTheme.blueGray40001,
                              ),
                            ),
                            Text(
                              zipcode4,
                              style: theme.textTheme.bodySmall!.copyWith(
                                color: appTheme.blueGray40001,
                              ),
                            ),
                            Text(
                              zipcode5,
                              style: theme.textTheme.bodySmall!.copyWith(
                                color: appTheme.blueGray40001,
                              ),
                            ),
                            Text(
                              zipcode6,
                              style: theme.textTheme.bodySmall!.copyWith(
                                color: appTheme.blueGray40001,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFour(
    BuildContext context, {
    required String dynamicText1,
    required String dynamicText2,
    required String dynamicText3,
    required String dynamicText4,
  }) {
    return Row(
      children: [
        Text(
          dynamicText1,
          style: CustomTextStyles.bodySmallBluegray600.copyWith(
            color: appTheme.blueGray600,
          ),
        ),
        Spacer(
          flex: 23,
        ),
        Text(
          dynamicText2,
          style: CustomTextStyles.bodySmallBluegray600.copyWith(
            color: appTheme.blueGray600,
          ),
        ),
        Spacer(
          flex: 41,
        ),
        Text(
          dynamicText3,
          style: CustomTextStyles.bodySmallBluegray600.copyWith(
            color: appTheme.blueGray600,
          ),
        ),
        Spacer(
          flex: 35,
        ),
        Text(
          dynamicText4,
          style: CustomTextStyles.labelLargeTealA400.copyWith(
            color: appTheme.tealA400,
          ),
        ),
      ],
    );
  }
}
