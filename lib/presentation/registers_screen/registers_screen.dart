import 'notifier/registers_notifier.dart';
import 'package:flutter/material.dart';
import 'package:test/core/app_export.dart';
import 'package:test/core/utils/validation_functions.dart';
import 'package:test/widgets/app_bar/appbar_leading_image.dart';
import 'package:test/widgets/app_bar/custom_app_bar.dart';
import 'package:test/widgets/custom_elevated_button.dart';
import 'package:test/widgets/custom_text_form_field.dart';

class RegistersScreen extends ConsumerStatefulWidget {
  const RegistersScreen({Key? key}) : super(key: key);

  @override
  RegistersScreenState createState() => RegistersScreenState();
}

// ignore_for_file: must_be_immutable
class RegistersScreenState extends ConsumerState<RegistersScreen> {
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
                        EdgeInsets.only(left: 16.h, top: 73.v, right: 16.h),
                    child: Column(children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text("msg_create_a_new_account".tr,
                              style: theme.textTheme.headlineMedium)),
                      SizedBox(height: 15.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text("msg_it_s_fast_and_easy".tr,
                              style: CustomTextStyles.titleSmallBluegray40001)),
                      SizedBox(height: 24.v),
                      _buildFirstName(context),
                      SizedBox(height: 16.v),
                      _buildEmail(context),
                      SizedBox(height: 16.v),
                      _buildPassword(context),
                      SizedBox(height: 40.v),
                      _buildRegisterButton(context),
                      SizedBox(height: 5.v)
                    ])))));
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

  /// Section Widget
  Widget _buildFirstNameRow(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(right: 8.h),
            child: Consumer(builder: (context, ref, _) {
              return CustomTextFormField(
                  controller:
                      ref.watch(registersNotifier).firstNameRowController,
                  hintText: "lbl_first_name".tr,
                  validator: (value) {
                    if (!isText(value)) {
                      return "err_msg_please_enter_valid_text".tr;
                    }
                    return null;
                  },
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v),
                  borderDecoration: TextFormFieldStyleHelper.fillIndigo,
                  fillColor: appTheme.indigo50);
            })));
  }

  /// Section Widget
  Widget _buildLastNameRow(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Consumer(builder: (context, ref, _) {
              return CustomTextFormField(
                  controller:
                      ref.watch(registersNotifier).lastNameRowController,
                  hintText: "lbl_last_name".tr,
                  validator: (value) {
                    if (!isText(value)) {
                      return "err_msg_please_enter_valid_text".tr;
                    }
                    return null;
                  },
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v),
                  borderDecoration: TextFormFieldStyleHelper.fillIndigo,
                  fillColor: appTheme.indigo50);
            })));
  }

  /// Section Widget
  Widget _buildFirstName(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [_buildFirstNameRow(context), _buildLastNameRow(context)]);
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      return CustomTextFormField(
          controller: ref.watch(registersNotifier).emailController,
          hintText: "lbl_email".tr,
          textInputType: TextInputType.emailAddress,
          validator: (value) {
            if (value == null || (!isValidEmail(value, isRequired: true))) {
              return "err_msg_please_enter_valid_email".tr;
            }
            return null;
          },
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v),
          borderDecoration: TextFormFieldStyleHelper.fillIndigo,
          fillColor: appTheme.indigo50);
    });
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      return CustomTextFormField(
          controller: ref.watch(registersNotifier).passwordController,
          hintText: "lbl_password".tr,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          suffix: InkWell(
              onTap: () {
                ref.read(registersNotifier.notifier).changePasswordVisibility();
              },
              child: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 13.v, 16.h, 13.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgAntdesigneyeinvisiblefilled,
                      height: 24.adaptSize,
                      width: 24.adaptSize))),
          suffixConstraints: BoxConstraints(maxHeight: 50.v),
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: ref.watch(registersNotifier).isShowPassword,
          contentPadding: EdgeInsets.only(left: 16.h, top: 15.v, bottom: 15.v),
          borderDecoration: TextFormFieldStyleHelper.fillIndigo,
          fillColor: appTheme.indigo50);
    });
  }

  /// Section Widget
  Widget _buildRegisterButton(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_register2".tr,
        onPressed: () {
          onTapRegisterButton(context);
        });
  }

  /// Navigates to the getStartedScreen when the action is triggered.
  onTapRegisterButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.getStartedScreen,
    );
  }
}
