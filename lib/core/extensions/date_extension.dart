import 'package:intl/intl.dart';

extension DateExtension on DateTime {
  String get toDateTransaction {
    return DateFormat('d MMM y • HH:mm').format(this);
  }
}
