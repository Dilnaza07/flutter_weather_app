

import 'package:intl/intl.dart';

class Util{

  static String getDayOfWeek(String date){
    String dateStr = date;
    DateTime dateTime = DateFormat('yyyy-MM-dd HH:mm').parse(dateStr);
    String dayOfWeek = DateFormat('EEEE').format(dateTime);
    return dayOfWeek;
  }
}