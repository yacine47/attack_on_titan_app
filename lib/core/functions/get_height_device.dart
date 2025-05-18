import 'dart:math';

import 'package:flutter/widgets.dart';

double getHeightDevice(BuildContext context) {
  final size = MediaQuery.of(context).size;
  return max(size.height, size.width);
}
