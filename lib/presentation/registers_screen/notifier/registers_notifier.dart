import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:test/presentation/registers_screen/models/registers_model.dart';
part 'registers_state.dart';

final registersNotifier =
    StateNotifierProvider<RegistersNotifier, RegistersState>((ref) =>
        RegistersNotifier(RegistersState(
            firstNameRowController: TextEditingController(),
            lastNameRowController: TextEditingController(),
            emailController: TextEditingController(),
            passwordController: TextEditingController(),
            isShowPassword: false,
            registersModelObj: RegistersModel())));

/// A notifier that manages the state of a Registers according to the event that is dispatched to it.
class RegistersNotifier extends StateNotifier<RegistersState> {
  RegistersNotifier(RegistersState state) : super(state);

  void changePasswordVisibility() {
    state = state.copyWith(isShowPassword: !(state.isShowPassword ?? false));
  }
}
