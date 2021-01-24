import 'package:flutter/services.dart';

class InputValidator {
  static List<TextInputFormatter> numberonly = <TextInputFormatter>[
    FilteringTextInputFormatter.digitsOnly,
    LengthLimitingTextInputFormatter(8),
  ];
}
