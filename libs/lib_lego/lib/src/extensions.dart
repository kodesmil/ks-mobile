extension ExDateTime on DateTime {
  bool isToday() {
    final now = DateTime.now();
    return year == now.year && day == now.day && month == now.month;
  }
}
