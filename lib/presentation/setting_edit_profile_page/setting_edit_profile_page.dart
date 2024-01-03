import 'notifier/setting_edit_profile_notifier.dart';
import 'package:flutter/material.dart';
import 'package:test/core/app_export.dart';
import 'package:test/core/utils/validation_functions.dart';
import 'package:test/widgets/custom_elevated_button.dart';
import 'package:test/widgets/custom_icon_button.dart';
import 'package:test/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SettingEditProfilePage extends ConsumerStatefulWidget {
  const SettingEditProfilePage({Key? key})
      : super(
          key: key,
        );

  @override
  SettingEditProfilePageState createState() => SettingEditProfilePageState();
}

class SettingEditProfilePageState extends ConsumerState<SettingEditProfilePage>
    with AutomaticKeepAliveClientMixin<SettingEditProfilePage> {
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 25.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 170.v,
                        width: 174.h,
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgEllipse28,
                              height: 170.adaptSize,
                              width: 170.adaptSize,
                              radius: BorderRadius.circular(
                                85.h,
                              ),
                              alignment: Alignment.center,
                              onTap: () {
                                onTapImgCircleImage(context);
                              },
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 20.v),
                              child: CustomIconButton(
                                height: 38.adaptSize,
                                width: 38.adaptSize,
                                padding: EdgeInsets.all(9.h),
                                decoration: IconButtonStyleHelper.fillPrimary,
                                alignment: Alignment.bottomRight,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgPencilAlt1,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 23.v),
                      _buildInputField7(context),
                      SizedBox(height: 18.v),
                      _buildInputField9(context),
                      SizedBox(height: 17.v),
                      _buildInputField6(context),
                      SizedBox(height: 18.v),
                      _buildInputField10(context),
                      SizedBox(height: 17.v),
                      _buildInputField2(context),
                      SizedBox(height: 17.v),
                      _buildInputField11(context),
                      SizedBox(height: 18.v),
                      _buildInputField4(context),
                      SizedBox(height: 19.v),
                      _buildInputField8(context),
                      SizedBox(height: 17.v),
                      _buildInputField2(context),
                      SizedBox(height: 19.v),
                      _buildInputField12(context),
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
  Widget _buildInputField7(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_your_name".tr,
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 8.v),
        Consumer(
          builder: (context, ref, _) {
            return CustomTextFormField(
              controller: ref.watch(settingEditProfileNotifier).nameController,
              hintText: "lbl_charlene_reed".tr,
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildInputField9(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_user_name".tr,
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 8.v),
        Consumer(
          builder: (context, ref, _) {
            return CustomTextFormField(
              controller:
                  ref.watch(settingEditProfileNotifier).userNameController,
              hintText: "lbl_charlene_reed".tr,
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildInputField6(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_email".tr,
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 8.v),
        Consumer(
          builder: (context, ref, _) {
            return CustomTextFormField(
              controller: ref.watch(settingEditProfileNotifier).emailController,
              hintText: "lbl_user_gmail_com".tr,
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildInputField10(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_password".tr,
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 8.v),
        Consumer(
          builder: (context, ref, _) {
            return CustomTextFormField(
              controller:
                  ref.watch(settingEditProfileNotifier).passwordController,
              hintText: "lbl".tr,
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
  Widget _buildInputField11(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_present_address".tr,
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 8.v),
        Consumer(
          builder: (context, ref, _) {
            return CustomTextFormField(
              controller:
                  ref.watch(settingEditProfileNotifier).addressController,
              hintText: "msg_san_jose_california".tr,
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildInputField4(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "msg_permanent_address".tr,
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 8.v),
        Consumer(
          builder: (context, ref, _) {
            return CustomTextFormField(
              controller:
                  ref.watch(settingEditProfileNotifier).addressController1,
              hintText: "msg_san_jose_california".tr,
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
          "lbl_city".tr,
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 7.v),
        Consumer(
          builder: (context, ref, _) {
            return CustomTextFormField(
              controller: ref.watch(settingEditProfileNotifier).cityController,
              hintText: "lbl_san_jose".tr,
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildInputField12(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_country".tr,
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 7.v),
        Consumer(
          builder: (context, ref, _) {
            return CustomTextFormField(
              controller:
                  ref.watch(settingEditProfileNotifier).countryController,
              hintText: "lbl_usa".tr,
              textInputAction: TextInputAction.done,
            );
          },
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildInputField2(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_postal_code".tr,
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 8.v),
        Container(
          width: 287.h,
          padding: EdgeInsets.symmetric(
            horizontal: 14.h,
            vertical: 11.v,
          ),
          decoration: AppDecoration.outlineTeal.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Text(
            "lbl_45962".tr,
            style: CustomTextStyles.bodySmallBluegray900,
          ),
        ),
      ],
    );
  }
}
