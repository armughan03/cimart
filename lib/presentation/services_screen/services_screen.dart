import '../services_screen/widgets/lifeinsurancefilled_item_widget.dart';
import '../services_screen/widgets/loanone_item_widget.dart';
import 'models/lifeinsurancefilled_item_model.dart';
import 'models/loanone_item_model.dart';
import 'notifier/services_notifier.dart';
import 'package:flutter/material.dart';
import 'package:test/core/app_export.dart';
import 'package:test/widgets/app_bar/appbar_leading_image.dart';
import 'package:test/widgets/app_bar/appbar_title.dart';
import 'package:test/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:test/widgets/app_bar/custom_app_bar.dart';
import 'package:test/widgets/custom_search_view.dart';

class ServicesScreen extends ConsumerStatefulWidget {
  const ServicesScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ServicesScreenState createState() => ServicesScreenState();
}

class ServicesScreenState extends ConsumerState<ServicesScreen> {
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildLifeInsuranceFilled(context),
                        SizedBox(height: 22.v),
                        Text(
                          "msg_bank_services_list".tr,
                          style: CustomTextStyles.titleMediumBluegray800,
                        ),
                        SizedBox(height: 12.v),
                        _buildLoanOne(context),
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
              text: "lbl_services".tr,
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
                  controller: ref.watch(servicesNotifier).searchController,
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
  Widget _buildLifeInsuranceFilled(BuildContext context) {
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
                width: 15.h,
              );
            },
            itemCount: ref
                    .watch(servicesNotifier)
                    .servicesModelObj
                    ?.lifeinsurancefilledItemList
                    .length ??
                0,
            itemBuilder: (context, index) {
              LifeinsurancefilledItemModel model = ref
                      .watch(servicesNotifier)
                      .servicesModelObj
                      ?.lifeinsurancefilledItemList[index] ??
                  LifeinsurancefilledItemModel();
              return LifeinsurancefilledItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildLoanOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 24.h),
      child: Consumer(
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
                    .watch(servicesNotifier)
                    .servicesModelObj
                    ?.loanoneItemList
                    .length ??
                0,
            itemBuilder: (context, index) {
              LoanoneItemModel model = ref
                      .watch(servicesNotifier)
                      .servicesModelObj
                      ?.loanoneItemList[index] ??
                  LoanoneItemModel();
              return LoanoneItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
