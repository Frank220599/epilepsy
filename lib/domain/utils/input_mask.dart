import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class InputMask {
  static MaskTextInputFormatter maskPhoneNumber = MaskTextInputFormatter(
      mask: '## ### ## ##', filter: {"#": RegExp(r'[0-9]')});

  static MaskTextInputFormatter maskDuration =
      MaskTextInputFormatter(mask: '##:##', filter: {"#": RegExp(r'[0-9]')});
}
