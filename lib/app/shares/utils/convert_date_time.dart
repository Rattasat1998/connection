import 'package:intl/intl.dart';

String convertToThaiBuddhistEra(DateTime date) {
  const buddhistYearOffset = 543;
  final thaiBuddhistYear = date.year + buddhistYearOffset;
  final formattedDate = DateFormat.MMMMd('th').format(date);
  return '$formattedDate พ.ศ. $thaiBuddhistYear';
}
