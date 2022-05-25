import 'package:image_picker/image_picker.dart';

final picker = ImagePicker();

Future<XFile?> pickImgFromGallery() async {
  try {
    XFile? pickedFile = await picker.pickImage(
      source: ImageSource.gallery,
    );
    if (pickedFile != null) {
      return pickedFile;
    }
    return null;
  } catch (e) {
    throw Exception(e);
  }
}
