import 'notifier/setting_security_notifier.dart';
import 'package:flutter/material.dart';
import 'package:test/core/app_export.dart';
import 'package:test/core/utils/validation_functions.dart';
import 'package:test/widgets/custom_elevated_button.dart';
import 'package:test/widgets/custom_switch.dart';
import 'package:test/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SettingSecurityPage extends ConsumerStatefulWidget {
  const SettingSecurityPage({Key? key})
      : super(
          key: key,
        );

  @override
  SettingSecurityPageState createState() => SettingSecurityPageState();
}

class SettingSecurityPageState extends ConsumerState<SettingSecurityPage>
    with AutomaticKeepAliveClientMixin<SettingSecurityPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            decoration: AppDecoration.fillGray,
            child: Column(
              children: [
                SizedBox(height: 23.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: Column(
                    children: [
                      _buildTwoFactorAuthentication(context),
                      SizedBox(height: 18.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "lbl_change_password".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                      SizedBox(height: 11.v),
                      _buildInputField7(context),
                      SizedBox(height: 18.v),
                      _buildInputField8(context),
                      SizedBox(height: 20.v),
                      CustomElevatedButton(
                        height: 40.v,
                        text: "lbl_save".tr,
                        buttonStyle: CustomButtonStyles.fillPrimaryTL20,
                        buttonTextStyle: CustomTextStyles.titleMediumOnPrimary,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTwoFactorAuthentication(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "msg_two_factor_authentication".tr,
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 10.v),
        Padding(
          padding: EdgeInsets.only(right: 72.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Consumer(
                builder: (context, ref, _) {
                  return CustomSwitch(
                    margin: EdgeInsets.only(
                      top: 5.v,
                      bottom: 6.v,
                    ),
                    value: ref.watch(settingSecurityNotifier).isSelectedSwitch,
                    onChange: (value) {
                      ref
                          .read(settingSecurityNotifier.notifier)
                          .changeSwitchBox1(value);
                    },
                  );
                },
              ),
              Expanded(
                child: Container(
                  width: 159.h,
                  margin: EdgeInsets.only(left: 12.h),
                  child: Text(
                    "msg_enable_or_disable".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall!.copyWith(
                      height: 1.50,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildInputField7(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "msg_current_password".tr,
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 8.v),
        Consumer(
          builder: (context, ref, _) {
            return CustomTextFormField(
              controller: ref.watch(settingSecurityNotifier).passwordController,
              hintText: "lbl_charlene_123".tr,
              textInputType: TextInputType.visiblePassword,
              validator: (value) {
                if (value == null ||
                    (!isValidPassword(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_password".tr;
                }
                return null;
              },
              obscureText: true,
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildInputField8(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_new_password".tr,
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 8.v),
        Consumer(
          builder: (context, ref, _) {
            return CustomTextFormField(
              controller:
                  ref.watch(settingSecurityNotifier).newpasswordController,
              hintText: "lbl_charlene_123".tr,
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.visiblePassword,
              validator: (value) {
                if (value == null ||
                    (!isValidPassword(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_password".tr;
                }
                return null;
              },
              obscureText: true,
            );
          },
        ),
      ],
    );
  }
}
