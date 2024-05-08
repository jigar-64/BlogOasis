import 'package:url_launcher/url_launcher.dart';

final Uri websiteurl = Uri.parse('https://insightfulnow.com');
final Uri instaurl = Uri.parse('https://www.instagram.com/_jigar.01');
final Uri fburl = Uri.parse('https://www.facebook.com/prashant.akaviya/');
final Uri twitterurl = Uri.parse('https://twitter.com/PAkaviya');
final Uri mailurl = Uri.parse('mailto:blogoasis@gmail.com');
Future<void> launchMailUrl() async {
  if (!await launchUrl(mailurl, mode: LaunchMode.externalApplication)) {
    throw Exception('Could not launch $mailurl');
  }
}

Future<void> launchTwitterUrl() async {
  if (!await launchUrl(twitterurl, mode: LaunchMode.externalApplication)) {
    throw Exception('Could not launch $twitterurl');
  }
}

Future<void> launchInstagramUrl() async {
  if (!await launchUrl(instaurl, mode: LaunchMode.externalApplication)) {
    throw Exception('Could not launch $instaurl');
  }
}

Future<void> launchFaceBookUrl() async {
  if (!await launchUrl(fburl, mode: LaunchMode.externalApplication)) {
    throw Exception('Could not launch $fburl');
  }
}

Future<void> launchWebsiteUrl() async {
  if (!await launchUrl(websiteurl, mode: LaunchMode.externalApplication)) {
    throw Exception('Could not launch $websiteurl');
  }
}
