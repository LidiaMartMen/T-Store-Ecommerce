import 'package:intl/intl.dart';

class CFormatter {
  //FORMATEAR LA FECHA:
  static String formatDate(DateTime? date) {
    date ??= DateTime.now(); //Si Date es nulo, asigna la fecha de hoy
    return DateFormat('dd-MMM-yyyy').format(date);
  }

  //FORMATEAR MONEDA:
  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'es_ESP', symbol: '€').format(amount);
  }

  //FORMATEAR NÚMERO TELÉFONO:
  static String internationalFormatPhoneNumber(String phoneNumber) {
    // Remove any non-digit characters from the phone number
    var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    // Extract the country code from the digitsOnly
    String countryCode = '+${digitsOnly.substring(0, 2)}';
    digitsOnly = digitsOnly.substring(2);

    // Add the remaining digits with proper formatting
    final formattedNumber = StringBuffer();
    formattedNumber.write('($countryCode) ');

    int i = 0;
    while (i < digitsOnly.length) {
      int groupLength = 2;
      if (i == 0 && countryCode == '+1') {
        groupLength = 3;
      }

      int end = i + groupLength;
      formattedNumber.write(digitsOnly.substring(i, end));

      if (end < digitsOnly.length) {
        formattedNumber.write(' ');
      }
      i = end;
    }

    return formattedNumber.toString();
  }
}
