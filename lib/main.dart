// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:structureproject/ui/main/home_screen/home_screen.dart';

import 'constant/routes.dart';

const String channelId = "Savvee_channel";
const String channelName = "Savvee_app";
const String channelDes = "Savvee_channel_des";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      home: HomeScreen(),
      getPages: Routes.pages,
    );
  }
}
