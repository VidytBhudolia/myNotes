import 'package:flutter/material.dart';
import 'package:mynotes/utilities/dialogs/generic_dialogs.dart';

Future<void> showCannotShareEmptyNotesDialog(BuildContext context) async {
  return showGenericDialog(
    context: context,
    title: "Sharing",
    content: "You cannot share an empty note!",
    optionBuilder: () => {
      "ok": null,
    },
  );
}
