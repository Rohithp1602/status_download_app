import 'package:get/get.dart';
import 'package:structureproject/ui/main/download_screen/download_screen.dart';
import 'package:structureproject/ui/main/home_screen/category_detail_screen/category_detail_screen.dart';
import 'package:structureproject/ui/main/home_screen/home_screen.dart';
import 'package:structureproject/ui/main/insta_status_saver/insta_status_screen.dart';
import 'package:structureproject/ui/main/liked_screen/liked_screen.dart';

import '../ui/main/whatsapp_status_saver/whatsapp_status_saver_screen.dart';

class Routes {
  static const String home = "/home";
  static const String whatsappStatusScreen = "/whatsapp_status_screen";
  static const String instaStatusScreen = "/insta_status_screen";
  static const String downloadScreen = "/download_screen";
  static const String likedScreen = "/liked_screen";
  static const String categoryDetailScreen = "/category_detail_screen";

  static List<GetPage> pages = [
    GetPage(
        name: Routes.home,
        page: () => const HomeScreen(),
        transition: Transition.noTransition),
    GetPage(
        name: Routes.whatsappStatusScreen,
        page: () => WhatsappStatusSaverScreen(),
        transition: Transition.noTransition),
    GetPage(
        name: Routes.instaStatusScreen,
        page: () => InstaStatusSaverScreen(),
        transition: Transition.noTransition),
    GetPage(
        name: Routes.downloadScreen,
        page: () => DownloadScreen(),
        transition: Transition.noTransition),
    GetPage(
        name: Routes.likedScreen,
        page: () => LikedScreen(),
        transition: Transition.noTransition),
    GetPage(
        name: Routes.categoryDetailScreen,
        page: () => CategotyDetailScreen(),
        transition: Transition.noTransition),
  ];
}
