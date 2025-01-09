import 'package:intl/date_symbol_data_file.dart';
import 'package:intl/intl.dart';

const String dateTimeFormatPattern = 'dd-MM-yyyy HH:mm:ss';

extension DateTimeExtension on DateTime {
  String format({
    String pattern = dateTimeFormatPattern,
    String? locale = 'es-ES',
  }) {
    if (locale != null && locale.isNotEmpty) {
      initializeDateFormatting(locale, '');
    }
    return DateFormat(pattern, locale).format(this);
  }
}
