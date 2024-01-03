import 'notifier/new_password_notifier.dart';
import 'package:flutter/material.dart';
import 'package:test/core/app_export.dart';
import 'package:test/core/utils/validation_functions.dart';
import 'package:test/widgets/app_bar/appbar_leading_image.dart';
import 'package:test/widgets/app_bar/custom_app_bar.dart';
import 'package:test/widgets/custom_elevated_button.dart';
import 'package:test/widgets/custom_text_form_field.dart';

class NewPasswordScreen extends ConsumerStatefulWidget {
  const NewPasswordScreen({Key? key}) : super(key: key);

  @override
  NewPasswordScreenState createState() => NewPasswordScreenState();
}

// ignore_for_file: must_be_immutable
class NewPasswordScreenState extends ConsumerState<NewPasswordScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.only(left: 16.h, top: 76.v, right: 16.h),
                    child: Column(children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text("msg_create_new_password".tr,
                              style: theme.textTheme.headlineMedium)),
                      SizedBox(height: 15.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text("msg_create_your_new".tr,
                              style: CustomTextStyles.titleSmallBluegray40001)),
                      SizedBox(height: 24.v),
                      Consumer(builder: (context, ref, _) {
                        return CustomTextFormField(
                            controller: ref
                                .watch(newPasswordNotifier)
                                .newpasswordController,
                            hintText: "lbl_new_password".tr,
                            textInputType: TextInputType.visiblePassword,
                            suffix: InkWell(
                                onTap: () {
                                  ref
                                      .read(newPasswordNotifier.notifier)
                                      .changePasswordVisibility();
                                },
                                child: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        30.h, 13.v, 16.h, 13.v),
                                    child: CustomImageView(
                                        imagePath: ImageConstant
                                            .imgAntdesigneyeinvisiblefilled,
                                        height: 24.adaptSize,
                                        width: 24.adaptSize))),
                            suffixConstraints: BoxConstraints(maxHeight: 50.v),
                            validator: (value) {
                              if (value == null ||
                                  (!isValidPassword(value, isRequired: true))) {
                                return "err_msg_please_enter_valid_password".tr;
                              }
                              return null;
                            },
                            obscureText:
                                ref.watch(newPasswordNotifier).isShowPassword,
                            contentPadding: EdgeInsets.only(
                                left: 16.h, top: 15.v, bottom: 15.v),
                            borderDecoration:
                                TextFormFieldStyleHelper.fillIndigo,
                            fillColor: appTheme.indigo50);
                      }),
                      SizedBox(height: 16.v),
                      Consumer(builder: (context, ref, _) {
                        return CustomTextFormField(
                            controller: ref
                                .watch(newPasswordNotifier)
                                .confirmpasswordController,
                            hintText: "msg_confirm_password".tr,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.visiblePassword,
                            suffix: InkWell(
                                onTap: () {
                                  ref
                                      .read(newPasswordNotifier.notifier)
                                      .changePasswordVisibility1();
                                },
                                child: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        30.h, 13.v, 16.h, 13.v),
                                    child: CustomImageView(
                                        imagePath: ImageConstant
                                            .imgAntdesigneyeinvisiblefilled,
                                        height: 24.adaptSize,
                                        width: 24.adaptSize))),
                            suffixConstraints: BoxConstraints(maxHeight: 50.v),
                            validator: (value) {
                              if (value == null ||
                                  (!isValidPassword(value, isRequired: true))) {
                                return "err_msg_please_enter_valid_password".tr;
                              }
                              return null;
                            },
                            obscureText:
                                ref.watch(newPasswordNotifier).isShowPassword1,
                            contentPadding: EdgeInsets.only(
                                left: 16.h, top: 15.v, bottom: 15.v),
                            borderDecoration:
                                TextFormFieldStyleHelper.fillIndigo,
                            fillColor: appTheme.indigo50);
                      }),
                      SizedBox(height: 40.v),
                      CustomElevatedButton(text: "lbl_reset_password".tr),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 44.v,
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVector,
            margin: EdgeInsets.fromLTRB(30.h, 14.v, 329.h, 14.v)));
  }
}
