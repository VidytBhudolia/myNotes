import 'package:flutter/material.dart';
import 'package:mynotes/utilities/dialogs/generic_dialogs.dart';

Future<bool> showDeleteDialog(BuildContext context) {
  return showGenericDialog(
      context: context,
      title: 'Delete',
      content: 'Are you sure you want to delete this item ?',
      optionBuilder: () => {
            'Yes': true,
            'Cancel': false,
          }).then(
    (value) => value ?? false,
  );
}
