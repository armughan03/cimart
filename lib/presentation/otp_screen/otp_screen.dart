import 'notifier/otp_notifier.dart';
import 'package:flutter/material.dart';
import 'package:test/core/app_export.dart';
import 'package:test/widgets/app_bar/appbar_leading_image.dart';
import 'package:test/widgets/app_bar/custom_app_bar.dart';
import 'package:test/widgets/custom_elevated_button.dart';
import 'package:test/widgets/custom_pin_code_text_field.dart';

class OtpScreen extends ConsumerStatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  OtpScreenState createState() => OtpScreenState();
}

class OtpScreenState extends ConsumerState<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 16.h, top: 73.v, right: 16.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("lbl_enter_otp".tr,
                          style: theme.textTheme.headlineMedium),
                      SizedBox(height: 15.v),
                      Text("msg_code_has_been_send".tr,
                          style: CustomTextStyles.titleSmallBluegray40001),
                      SizedBox(height: 24.v),
                      Padding(
                          padding: EdgeInsets.only(right: 1.h),
                          child: Consumer(builder: (context, ref, _) {
                            return CustomPinCodeTextField(
                                context: context,
                                controller:
                                    ref.watch(otpNotifier).otpController,
                                onChanged: (value) {
                                  ref.watch(otpNotifier).otpController?.text =
                                      value;
                                });
                          })),
                      SizedBox(height: 41.v),
                      CustomElevatedButton(
                          text: "lbl_continue".tr,
                          onPressed: () {
                            onTapContinue(context);
                          }),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 50.v,
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVector,
            margin: EdgeInsets.fromLTRB(30.h, 17.v, 329.h, 17.v)));
  }

  /// Navigates to the newPasswordScreen when the action is triggered.
  onTapContinue(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.newPasswordScreen,
    );
  }
}
