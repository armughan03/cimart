import 'notifier/setting_preference_notifier.dart';
import 'package:flutter/material.dart';
import 'package:test/core/app_export.dart';
import 'package:test/widgets/custom_elevated_button.dart';
import 'package:test/widgets/custom_switch.dart';
import 'package:test/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SettingPreferencePage extends ConsumerStatefulWidget {
  const SettingPreferencePage({Key? key})
      : super(
          key: key,
        );

  @override
  SettingPreferencePageState createState() => SettingPreferencePageState();
}

class SettingPreferencePageState extends ConsumerState<SettingPreferencePage>
    with AutomaticKeepAliveClientMixin<SettingPreferencePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              SizedBox(height: 24.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Column(
                  children: [
                    _buildInputField7(context),
                    SizedBox(height: 17.v),
                    _buildInputField8(context),
                    SizedBox(height: 25.v),
                    _buildNotification(context),
                    SizedBox(height: 15.v),
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
    );
  }

  /// Section Widget
  Widget _buildInputField7(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_currency".tr,
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 7.v),
        Consumer(
          builder: (context, ref, _) {
            return CustomTextFormField(
              controller:
                  ref.watch(settingPreferenceNotifier).classicController,
              hintText: "lbl_usd".tr,
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
          "lbl_time_zone".tr,
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 8.v),
        Consumer(
          builder: (context, ref, _) {
            return CustomTextFormField(
              controller: ref.watch(settingPreferenceNotifier).timeController,
              hintText: "msg_gmt_12_00_international".tr,
              textInputAction: TextInputAction.done,
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildNotification(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_notification".tr,
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 13.v),
        Padding(
          padding: EdgeInsets.only(right: 49.h),
          child: Row(
            children: [
              Consumer(
                builder: (context, ref, _) {
                  return CustomSwitch(
                    value:
                        ref.watch(settingPreferenceNotifier).isSelectedSwitch,
                    onChange: (value) {
                      ref
                          .read(settingPreferenceNotifier.notifier)
                          .changeSwitchBox1(value);
                    },
                  );
                },
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 12.h,
                  top: 5.v,
                  bottom: 3.v,
                ),
                child: Text(
                  "msg_i_send_or_receive".tr,
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 16.v),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Consumer(
              builder: (context, ref, _) {
                return CustomSwitch(
                  value: ref.watch(settingPreferenceNotifier).isSelectedSwitch1,
                  onChange: (value) {
                    ref
                        .read(settingPreferenceNotifier.notifier)
                        .changeSwitchBox2(value);
                  },
                );
              },
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 12.h,
                top: 4.v,
                bottom: 4.v,
              ),
              child: Text(
                "msg_i_receive_merchant".tr,
                style: theme.textTheme.bodySmall,
              ),
            ),
          ],
        ),
        SizedBox(height: 16.v),
        Padding(
          padding: EdgeInsets.only(right: 38.h),
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
                    value:
                        ref.watch(settingPreferenceNotifier).isSelectedSwitch2,
                    onChange: (value) {
                      ref
                          .read(settingPreferenceNotifier.notifier)
                          .changeSwitchBox3(value);
                    },
                  );
                },
              ),
              Expanded(
                child: Container(
                  width: 193.h,
                  margin: EdgeInsets.only(left: 12.h),
                  child: Text(
                    "msg_there_are_recommendation".tr,
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
}
