import 'package:flutter/material.dart';

void customShowModalBottomSheet({
  required BuildContext context,
  required Widget child,
}) {
  showModalBottomSheet(
    context: context,
    builder: (context) => child,
  );
}
