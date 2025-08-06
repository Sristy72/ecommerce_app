import 'package:intl/intl.dart';

class TFormatter {
  static String formatDate(DateTime date) {
    date ??= DateTime.now();
    return DateFormat(
      'dd-MM-yyyy',
    ).format(date); //Customize the date format as needed
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_US', symbol: '৳').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber) {
    if (phoneNumber.length == 10) {
      return '(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(3, 6)} ${phoneNumber.substring(6)}';
    } else if (phoneNumber.length == 11) {
      return '(${phoneNumber.substring(0, 4)}) ${phoneNumber.substring(4, 7)} ${phoneNumber.substring(7)}';
    }
    return phoneNumber;
  }


  static String internationalFormatPhoneNumber(String phoneNumber) {
    // Remove all non-digit characters
    var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    // Check if we have at least a few digits to extract a country code
    if (digitsOnly.length < 2) {
      return phoneNumber; // Not enough digits to format, return original
    }

    // Extract the first two digits as country code
    String countryCode = '+${digitsOnly.substring(0, 2)}';
    digitsOnly = digitsOnly.substring(2);

    // Create the formatted number
    final formattedNumber = StringBuffer();
    formattedNumber.write('($countryCode) ');

    int i = 0;
    while (i < digitsOnly.length) {
      int groupLength = 2;

      // Special case: if country code is +1 (USA/Canada), start with 3-digit group
      if (i == 0 && countryCode == '+1' && digitsOnly.length - i >= 3) {
        groupLength = 3;
      }

      // Avoid going out of bounds
      int end = (i + groupLength < digitsOnly.length)
          ? i + groupLength
          : digitsOnly.length;

      formattedNumber.write(digitsOnly.substring(i, end));

      if (end < digitsOnly.length) {
        formattedNumber.write(' ');
      }
      i = end;
    }

    return formattedNumber.toString();
  }
}
