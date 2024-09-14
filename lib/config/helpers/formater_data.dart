import 'package:intl/intl.dart';

class FormaterData {
  static String formatetData(double number) {
    final formatedNumber =
        NumberFormat.compactCurrency(decimalDigits: 0, symbol: '')
            .format(number);
    return formatedNumber;
  }
}
