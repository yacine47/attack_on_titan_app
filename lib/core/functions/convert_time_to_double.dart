double convertTimeToDouble(String time) {
  final parts = time.split(':');
  final hour = int.parse(parts[0]);
  final minute = int.parse(parts[1]);
  return hour + (minute / 60);
}
