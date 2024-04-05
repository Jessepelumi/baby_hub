import 'dart:io';

import 'package:intl/intl.dart';

String getNaira() {
  var format =
      NumberFormat.simpleCurrency(locale: Platform.localeName, name: 'NGN');
  return format.currencySymbol;
}
