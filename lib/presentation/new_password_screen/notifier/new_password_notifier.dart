import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:test/presentation/new_password_screen/models/new_password_model.dart';
part 'new_password_state.dart';

final newPasswordNotifier =
    StateNotifierProvider<NewPasswordNotifier, NewPasswordState>((ref) =>
        NewPasswordNotifier(NewPasswordState(
            newpasswordController: TextEditingController(),
            confirmpasswordController: TextEditingController(),
            isShowPassword: false,
            isShowPassword1: false,
            newPasswordModelObj: NewPasswordModel())));

/// A notifier that manages the state of a NewPassword according to the event that is dispatched to it.
class NewPasswordNotifier extends StateNotifier<NewPasswordState> {
  NewPasswordNotifier(NewPasswordState state) : super(state);

  void changePasswordVisibility() {
    state = state.copyWith(isShowPassword: !(state.isShowPassword ?? false));
  }

  void changePasswordVisibility1() {
    state = state.copyWith(isShowPassword1: !(state.isShowPassword1 ?? false));
  }
}
