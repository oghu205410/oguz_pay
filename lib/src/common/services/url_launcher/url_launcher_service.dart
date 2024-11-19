import 'dart:io';

import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../service_locator/sl.dart';
import '../app_info/app_info_service.dart';

class UrlLauncherService {
  Future<void> launchStringUrl(String url) async {
    final Uri webUrl = Uri.parse(url);

    await launchUrl(webUrl, mode: LaunchMode.inAppWebView);
  }

  Future<void> launchPhone(String phoneNumber) async {
    launchUrlString("tel://$phoneNumber");
  }

  Future<void> launchStore() async {
    final packageName = sl<AppInfoService>().packageName;

    final playStoreUrl = Uri.parse(
      'market://details?id=$packageName',
    );
    final appStoreUrl = Uri.parse(
      'itms-apps://itunes.apple.com/app/id6449662869',
    );

    if (Platform.isAndroid) {
      await launchUrl(playStoreUrl);
    } else if (Platform.isIOS) {
      await launchUrl(appStoreUrl);
    }
  }

  Future<void> launchInstagram(String username) async {
    Uri nativeUrl;

    if (Platform.isIOS) {
      nativeUrl = Uri.parse('https://www.instagram.com/$username');
    } else {
      nativeUrl = Uri.parse('instagram://user?username=$username');
    }

    final Uri webUrl = Uri(
      scheme: 'https',
      host: 'www.instagram.com',
      path: username,
    );

    if (await canLaunchUrl(nativeUrl)) {
      await launchUrl(nativeUrl);
    } else {
      await launchUrl(webUrl);
    }
  }
}
