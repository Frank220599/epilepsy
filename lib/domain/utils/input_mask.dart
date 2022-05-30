import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class InputMask {
  static final maskPhoneNumber = MaskTextInputFormatter(
      mask: '## ### ## ##', filter: {"#": RegExp(r'[0-9]')});

  static final maskDuration =
      MaskTextInputFormatter(mask: '##:##', filter: {"#": RegExp(r'[0-9]')});
}
