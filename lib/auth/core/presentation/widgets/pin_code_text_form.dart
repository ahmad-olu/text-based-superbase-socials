import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:geat/auth/core/core.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCodeWidget extends StatelessWidget {
  const PinCodeWidget({
    super.key,
    required this.theme,
    required this.onChanged,
    required this.confirmationCode,
  });

  final ThemeData theme;
  final void Function(String) onChanged;
  final ConfirmationCode confirmationCode;

  @override
  Widget build(BuildContext context) {
    // String? _confirmationCodeError(
    //     BuildContext context, ConfirmationCode confirmationCode) {
    //   final error = confirmationCode.error;
    //   if (error == null) return null;
    //   if (error == ConfirmationCodeValidationError.empty) {
    //     return 'Empty Block,';
    //   } else if (error == ConfirmationCodeValidationError.invalid) {
    //     return 'Invalid Confirmation Code format.';
    //   } else if (error == ConfirmationCodeValidationError.inComplete) {
    //     return 'value not complete must be more than 6';
    //   }
    //   return null;
    // }

    return SizedBox(
      width: 350,
      child: PinCodeTextField(
        appContext: context,
        length: 6,
        pastedTextStyle: theme.textTheme.headline3,
        //obscureText: true,
        obscuringCharacter: '&',
        animationType: AnimationType.fade,
        validator: (v) {
          if (v!.length < 6) {
            return 'value not complete';
          } else {
            return null;
          }
        },
        //todo!! insert error text
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          fieldHeight: 60,
          fieldWidth: 40,
          selectedColor: theme.colorScheme.secondary,
          activeColor: theme.colorScheme.primary,
          borderRadius: BorderRadius.circular(14),
          inactiveColor: theme.colorScheme.primary,
        ),
        keyboardType: TextInputType.number,
        cursorColor: theme.colorScheme.secondary,
        beforeTextPaste: (text) {
          log('Allow to paste $text');
          return true;
        },
        onChanged: onChanged,
      ),
    );
  }
}
