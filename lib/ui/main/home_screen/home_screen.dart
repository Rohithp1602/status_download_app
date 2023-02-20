import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:structureproject/api/api_extension.dart';
import 'package:structureproject/constant/app_colors.dart';
import 'package:structureproject/constant/routes.dart';
import 'package:structureproject/models/home_screen_status_model.dart';
import 'package:structureproject/ui/widgets/HomeStatusCard.dart';
import 'package:structureproject/ui/widgets/app_drawer.dart';
import 'package:structureproject/ui/widgets/common/app_tab_bar.dart';

import '../../../constant/assets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const AppDrawer(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 70,
        leading: InkWell(
          onTap: () {
            scaffoldKey.currentState!.openDrawer();
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              AppIcons.icDrawer,
            ),
          ),
        ),
        title: "All Status"
            .textStyle(size: 18, weight: FontWeight.bold, color: Colors.white),
        backgroundColor: AppColors.appBarColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(10),
          ),
        ),
      ),
      body: Column(
        children: [
          (15).spaceH(),
          SizedBox(
            height: 50,
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search_rounded),
                  prefixIconColor: AppColors.appBarColor,
                  hintText: "Search Your Video",
                  hintStyle: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w400),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: AppColors.appBarColor),
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: AppColors.appBarColor),
                      borderRadius: BorderRadius.circular(10)),
                  border: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: AppColors.appBarColor),
                      borderRadius: BorderRadius.circular(10))),
            ),
          ).paddingSymmetric(horizontal: 15, vertical: 5),
          (30.0).spaceH(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: GridView.builder(
                itemCount: tampCatList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      child: HomeStatusCard(
                        onTap: () {
                          Get.toNamed(Routes.categoryDetailScreen,
                              arguments: tampCatList[index]);
                        },
                        text: tampCatList[index].catagoryName,
                        imgUrl: tampCatList[index].catagoryImg,
                      ),
                    ),
                  );
                },
              ),
            ),
            /*AppTabBar(
              tabBarItems: const [
                Tab(
                  text: "Video",
                ),
                Tab(
                  text: "Image",
                )
              ],
              tabBarViewItems: TabBarView(children: [
                // Video Tab
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: GridView.builder(
                    itemCount: 6,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: HomeStatusCard(
                          text: 'Text',
                        ),
                      );
                    },
                  ),
                ),
                // Image Tab
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: GridView.builder(
                    itemCount: 8,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: HomeStatusCard(
                          text: 'Text',
                        ),
                      );
                    },
                  ),
                ),
              ]),
            ),*/
          ),
        ],
      ),
    );
  }
}
