import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:test/presentation/otp_screen/models/otp_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'otp_state.dart';

final otpNotifier = StateNotifierProvider<OtpNotifier, OtpState>((ref) =>
    OtpNotifier(OtpState(
        otpController: TextEditingController(), otpModelObj: OtpModel())));

/// A notifier that manages the state of a Otp according to the event that is dispatched to it.
class OtpNotifier extends StateNotifier<OtpState> with CodeAutoFill {
  OtpNotifier(OtpState state) : super(state);

  @override
  void codeUpdated() {
    state.otpController?.text = code ?? '';
  }
}
