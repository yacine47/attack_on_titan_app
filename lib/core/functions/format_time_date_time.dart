import 'package:intl/intl.dart';

String formatTimeDateTime(DateTime dateTime) {
  return DateFormat('HH:mm').format(dateTime);
}
