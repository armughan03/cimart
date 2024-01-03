import '../accounts_screen/widgets/accountsgrid_item_widget.dart';
import 'models/accountsgrid_item_model.dart';
import 'notifier/accounts_notifier.dart';
import 'package:flutter/material.dart';
import 'package:test/core/app_export.dart';
import 'package:test/widgets/app_bar/appbar_leading_image.dart';
import 'package:test/widgets/app_bar/appbar_title.dart';
import 'package:test/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:test/widgets/app_bar/custom_app_bar.dart';
import 'package:test/widgets/custom_icon_button.dart';
import 'package:test/widgets/custom_search_view.dart';

class AccountsScreen extends ConsumerStatefulWidget {
  const AccountsScreen({Key? key}) : super(key: key);

  @override
  AccountsScreenState createState() => AccountsScreenState();
}

class AccountsScreenState extends ConsumerState<AccountsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildHeader(context),
                  SizedBox(height: 24.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 24.h, right: 24.h, bottom: 5.v),
                              child: Column(children: [
                                _buildAccountsGrid(context),
                                SizedBox(height: 25.v),
                                _buildLastTransaction(context),
                                SizedBox(height: 27.v),
                                _buildMyCard(context),
                                SizedBox(height: 25.v),
                                _buildDebitCreditOverview(context),
                                SizedBox(height: 25.v),
                                _buildInvoicesSent(context)
                              ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildHeader(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 7.v),
        decoration: AppDecoration.white,
        child: Column(children: [
          CustomAppBar(
              leadingWidth: 48.h,
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgMegaphone,
                  margin: EdgeInsets.only(left: 24.h, top: 5.v, bottom: 6.v)),
              centerTitle: true,
              title: AppbarTitle(text: "lbl_accounts".tr),
              actions: [
                AppbarTrailingCircleimage(
                    imagePath: ImageConstant.imgEllipse37,
                    margin: EdgeInsets.symmetric(horizontal: 24.h))
              ]),
          SizedBox(height: 20.v),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              child: Consumer(builder: (context, ref, _) {
                return CustomSearchView(
                    controller: ref.watch(accountsNotifier).searchController,
                    hintText: "msg_search_for_something".tr);
              })),
          SizedBox(height: 13.v)
        ]));
  }

  /// Section Widget
  Widget _buildAccountsGrid(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      return GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 86.v,
              crossAxisCount: 2,
              mainAxisSpacing: 16.h,
              crossAxisSpacing: 16.h),
          physics: NeverScrollableScrollPhysics(),
          itemCount: ref
                  .watch(accountsNotifier)
                  .accountsModelObj
                  ?.accountsgridItemList
                  .length ??
              0,
          itemBuilder: (context, index) {
            AccountsgridItemModel model = ref
                    .watch(accountsNotifier)
                    .accountsModelObj
                    ?.accountsgridItemList[index] ??
                AccountsgridItemModel();
            return AccountsgridItemWidget(model);
          });
    });
  }

  /// Section Widget
  Widget _buildLastTransaction(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("msg_last_transaction".tr, style: theme.textTheme.titleMedium),
      SizedBox(height: 14.v),
      Container(
          margin: EdgeInsets.only(right: 2.h),
          padding: EdgeInsets.all(20.h),
          decoration: AppDecoration.white
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder17),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomIconButton(
                  height: 45.adaptSize,
                  width: 45.adaptSize,
                  padding: EdgeInsets.all(12.h),
                  child: CustomImageView(imagePath: ImageConstant.imgRenew1)),
              Padding(
                  padding: EdgeInsets.only(left: 12.h, top: 5.v, bottom: 3.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("msg_spotify_subscription".tr,
                            style: theme.textTheme.titleSmall),
                        SizedBox(height: 3.v),
                        Text("lbl_25_jan_2021".tr,
                            style: theme.textTheme.bodySmall)
                      ])),
              Spacer(),
              Padding(
                  padding: EdgeInsets.only(top: 14.v, bottom: 15.v),
                  child: Text("lbl_150".tr,
                      style: CustomTextStyles.labelLargeRed700))
            ]),
            SizedBox(height: 12.v),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomIconButton(
                  height: 45.adaptSize,
                  width: 45.adaptSize,
                  padding: EdgeInsets.all(12.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgSettingsPrimary)),
              Padding(
                  padding: EdgeInsets.only(left: 12.h, top: 4.v, bottom: 3.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_mobile_service".tr,
                            style: theme.textTheme.titleSmall),
                        SizedBox(height: 4.v),
                        Text("lbl_25_jan_2021".tr,
                            style: theme.textTheme.bodySmall)
                      ])),
              Spacer(),
              Padding(
                  padding: EdgeInsets.only(top: 14.v, bottom: 15.v),
                  child: Text("lbl_340".tr,
                      style: CustomTextStyles.labelLargeRed700))
            ]),
            SizedBox(height: 12.v),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomIconButton(
                  height: 45.adaptSize,
                  width: 45.adaptSize,
                  padding: EdgeInsets.all(12.h),
                  child: CustomImageView(imagePath: ImageConstant.imgUser21)),
              Padding(
                  padding: EdgeInsets.only(left: 12.h, top: 5.v, bottom: 3.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_emilly_wilson".tr,
                            style: theme.textTheme.titleSmall),
                        SizedBox(height: 3.v),
                        Text("lbl_25_jan_2021".tr,
                            style: theme.textTheme.bodySmall)
                      ])),
              Spacer(),
              Padding(
                  padding: EdgeInsets.only(top: 14.v, bottom: 15.v),
                  child: Text("lbl_780".tr,
                      style: CustomTextStyles.labelLargeGreen600))
            ])
          ]))
    ]);
  }

  /// Section Widget
  Widget _buildMyCard(BuildContext context) {
    return Column(children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text("lbl_my_card".tr, style: theme.textTheme.titleMedium),
        GestureDetector(
            onTap: () {
              onTapTxtSeeAll(context);
            },
            child: Padding(
                padding: EdgeInsets.only(bottom: 3.v),
                child: Text("lbl_see_all".tr,
                    style: CustomTextStyles.titleSmallSemiBold)))
      ]),
      SizedBox(height: 12.v),
      Container(
          decoration: AppDecoration.fillPrimary
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder17),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: 17.v),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 51.h),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("lbl_balance".tr,
                                    style: theme.textTheme.labelMedium),
                                SizedBox(height: 3.v),
                                Text("lbl_5_756".tr,
                                    style:
                                        CustomTextStyles.titleMediumOnPrimary_1)
                              ]),
                          CustomImageView(
                              imagePath: ImageConstant.imgChipCard,
                              height: 29.adaptSize,
                              width: 29.adaptSize,
                              margin: EdgeInsets.only(top: 4.v, bottom: 3.v))
                        ])),
                SizedBox(height: 17.v),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 20.h),
                        child: Row(children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("lbl_card_holder".tr,
                                    style: theme.textTheme.labelMedium),
                                SizedBox(height: 1.v),
                                Text("lbl_eddy_cusuma".tr,
                                    style: CustomTextStyles.titleSmallOnPrimary)
                              ]),
                          Padding(
                              padding: EdgeInsets.only(left: 41.h),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("lbl_valid_thru".tr,
                                        style: theme.textTheme.labelMedium),
                                    SizedBox(height: 1.v),
                                    Text("lbl_12_22".tr,
                                        style: CustomTextStyles
                                            .titleSmallOnPrimary)
                                  ]))
                        ]))),
                SizedBox(height: 11.v),
                Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.h, vertical: 16.v),
                    decoration: AppDecoration.gradientOnPrimaryToOnPrimary
                        .copyWith(
                            borderRadius: BorderRadiusStyle.customBorderBL15),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(top: 1.v),
                              child: Text("msg_3778_1234".tr,
                                  style:
                                      CustomTextStyles.titleSmallOnPrimary_1)),
                          CustomImageView(
                              imagePath: ImageConstant.imgUserOnprimary,
                              height: 18.v,
                              width: 27.h)
                        ]))
              ]))
    ]);
  }

  /// Section Widget
  Widget _buildDebitCreditOverview(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("msg_debit_credit_overview".tr, style: theme.textTheme.titleMedium),
      SizedBox(height: 14.v),
      Container(
          padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 15.v),
          decoration: AppDecoration.white
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder17),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 3.v),
                Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                        padding: EdgeInsets.only(right: 1.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                  height: 12.adaptSize,
                                  width: 12.adaptSize,
                                  margin: EdgeInsets.only(bottom: 2.v),
                                  decoration: BoxDecoration(
                                      color: theme.colorScheme.primary,
                                      borderRadius:
                                          BorderRadius.circular(4.h))),
                              Padding(
                                  padding: EdgeInsets.only(left: 10.h),
                                  child: Text("lbl_debit".tr,
                                      style: theme.textTheme.bodySmall)),
                              Container(
                                  width: 57.h,
                                  margin: EdgeInsets.only(left: 20.h),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                            height: 12.adaptSize,
                                            width: 12.adaptSize,
                                            margin:
                                                EdgeInsets.only(bottom: 2.v),
                                            decoration: BoxDecoration(
                                                color: appTheme.indigo300,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        4.h))),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 10.h),
                                            child: Text("lbl_credit".tr,
                                                style:
                                                    theme.textTheme.bodySmall))
                                      ]))
                            ]))),
                SizedBox(height: 15.v),
                Padding(
                    padding: EdgeInsets.only(right: 1.h),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgGroup27,
                                  height: 153.v,
                                  width: 25.h,
                                  margin: EdgeInsets.only(right: 9.h))),
                          Expanded(
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgGroup27,
                                  height: 120.v,
                                  width: 25.h,
                                  margin: EdgeInsets.only(
                                      left: 9.h, top: 33.v, right: 9.h))),
                          Expanded(
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgSettings,
                                  height: 75.v,
                                  width: 25.h,
                                  margin: EdgeInsets.only(
                                      left: 9.h, top: 78.v, right: 9.h))),
                          Expanded(
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgGroup27,
                                  height: 129.v,
                                  width: 25.h,
                                  margin: EdgeInsets.only(
                                      left: 9.h, top: 24.v, right: 9.h))),
                          Expanded(
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgGroup27,
                                  height: 136.v,
                                  width: 25.h,
                                  margin: EdgeInsets.only(
                                      left: 9.h, top: 17.v, right: 9.h))),
                          Expanded(
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgSettings,
                                  height: 96.v,
                                  width: 25.h,
                                  margin: EdgeInsets.only(
                                      left: 9.h, top: 57.v, right: 9.h))),
                          Expanded(
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgGroup27,
                                  height: 143.v,
                                  width: 25.h,
                                  margin:
                                      EdgeInsets.only(left: 9.h, top: 10.v)))
                        ])),
                SizedBox(height: 11.v),
                Padding(
                    padding: EdgeInsets.only(left: 3.h, right: 7.h),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("lbl_sat".tr, style: theme.textTheme.bodySmall),
                          Text("lbl_sun".tr, style: theme.textTheme.bodySmall),
                          Text("lbl_mon".tr, style: theme.textTheme.bodySmall),
                          Text("lbl_tue".tr, style: theme.textTheme.bodySmall),
                          Text("lbl_wed".tr, style: theme.textTheme.bodySmall),
                          Text("lbl_thu".tr, style: theme.textTheme.bodySmall),
                          Text("lbl_fri".tr, style: theme.textTheme.bodySmall)
                        ]))
              ]))
    ]);
  }

  /// Section Widget
  Widget _buildInvoicesSent(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_invoices_sent".tr, style: theme.textTheme.titleMedium),
      SizedBox(height: 13.v),
      Container(
          padding: EdgeInsets.all(20.h),
          decoration: AppDecoration.white
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder17),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomIconButton(
                  height: 45.adaptSize,
                  width: 45.adaptSize,
                  padding: EdgeInsets.all(12.h),
                  child: CustomImageView(imagePath: ImageConstant.imgApple21)),
              Padding(
                  padding: EdgeInsets.only(left: 12.h, top: 6.v, bottom: 3.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_apple_store".tr,
                            style: CustomTextStyles.titleSmallPrimary),
                        SizedBox(height: 2.v),
                        Text("lbl_5h_ago".tr, style: theme.textTheme.bodySmall)
                      ])),
              Spacer(),
              Padding(
                  padding: EdgeInsets.only(top: 14.v, bottom: 13.v),
                  child: Text("lbl_450".tr,
                      style: CustomTextStyles.titleSmallPrimaryBold))
            ]),
            SizedBox(height: 15.v),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomIconButton(
                  height: 45.adaptSize,
                  width: 45.adaptSize,
                  padding: EdgeInsets.all(12.h),
                  child: CustomImageView(imagePath: ImageConstant.imgUser21)),
              Padding(
                  padding: EdgeInsets.only(left: 12.h, top: 5.v, bottom: 3.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_michael".tr,
                            style: CustomTextStyles.titleSmallPrimary),
                        SizedBox(height: 4.v),
                        Text("lbl_2_days_ago".tr,
                            style: theme.textTheme.bodySmall)
                      ])),
              Spacer(),
              Padding(
                  padding: EdgeInsets.only(top: 14.v, bottom: 13.v),
                  child: Text("lbl_160".tr,
                      style: CustomTextStyles.titleSmallPrimaryBold))
            ]),
            SizedBox(height: 15.v),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomIconButton(
                  height: 45.adaptSize,
                  width: 45.adaptSize,
                  padding: EdgeInsets.all(12.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgPlaystation1)),
              Padding(
                  padding: EdgeInsets.only(left: 12.h, top: 6.v, bottom: 3.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_playstation".tr,
                            style: CustomTextStyles.titleSmallPrimary),
                        SizedBox(height: 2.v),
                        Text("lbl_5_days_ago".tr,
                            style: theme.textTheme.bodySmall)
                      ])),
              Spacer(),
              Padding(
                  padding: EdgeInsets.only(top: 14.v, bottom: 13.v),
                  child: Text("lbl_1085".tr,
                      style: CustomTextStyles.titleSmallPrimaryBold))
            ]),
            SizedBox(height: 15.v),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomIconButton(
                  height: 45.adaptSize,
                  width: 45.adaptSize,
                  padding: EdgeInsets.all(12.h),
                  child: CustomImageView(imagePath: ImageConstant.imgUser21)),
              Padding(
                  padding: EdgeInsets.only(left: 12.h, top: 5.v, bottom: 3.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_william".tr,
                            style: CustomTextStyles.titleSmallPrimary),
                        SizedBox(height: 4.v),
                        Text("lbl_10_days_ago".tr,
                            style: theme.textTheme.bodySmall)
                      ])),
              Spacer(),
              Padding(
                  padding: EdgeInsets.only(top: 14.v, bottom: 13.v),
                  child: Text("lbl_90".tr,
                      style: CustomTextStyles.titleSmallPrimaryBold))
            ])
          ]))
    ]);
  }

  /// Navigates to the creditCardsScreen when the action is triggered.
  onTapTxtSeeAll(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.creditCardsScreen,
    );
  }
}
