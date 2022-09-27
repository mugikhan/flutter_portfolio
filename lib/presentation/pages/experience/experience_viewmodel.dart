import 'package:stacked/stacked.dart';
import 'package:url_launcher/url_launcher.dart';

class ExperienceViewModel extends BaseViewModel {
  Future<void> onLinkTap(String link) async {
    final Uri uri = Uri.parse(link);
    if (!await launchUrl(uri)) {
      print('Could not launch $uri');
    }
  }
}
