import 'package:url_launcher/url_launcher.dart';

void launchURL(link) async {
  try {
    if (link) {
      final status = await canLaunch(link);
      if (status) {
        await launch(link);
      }
    }
  } catch (e) {
    throw 'Could not launch $link';
  }
}
