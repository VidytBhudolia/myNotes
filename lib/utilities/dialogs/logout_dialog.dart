import 'package:flutter/material.dart';
import 'package:mynotes/utilities/dialogs/generic_dialogs.dart';

Future<bool> showLogOutDialog(BuildContext context) {
  return showGenericDialog(
      context: context,
      title: 'Log out',
      content: 'Are you sure you want to logout ?',
      optionBuilder: () => {
            'Log out': true,
            'Cancel': false,
          }).then(
    (value) => value ?? false,
  );
}
