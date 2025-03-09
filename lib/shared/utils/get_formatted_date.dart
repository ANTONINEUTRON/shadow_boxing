import 'package:intl/intl.dart';

String getFormattedDate({required DateTime dateTime}) {
  final now = DateTime.now();
  if (dateTime.year == now.year &&
      dateTime.month == now.month &&
      dateTime.day == now.day) {
    return DateFormat('HH:mm').format(dateTime);
  } else if(dateTime.year == now.year){
    return  DateFormat('d MMMM, HH:mm').format(dateTime);
  } {
    return DateFormat('HH:mm, M/d/y').format(dateTime);
  }
}