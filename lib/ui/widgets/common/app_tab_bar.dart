import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:structureproject/constant/app_colors.dart';

class AppTabBar extends StatelessWidget {
  AppTabBar(
      {required this.tabBarItems,
      required this.tabBarViewItems,
      this.topPadding = 20});

  final List<Tab> tabBarItems;
  final TabBarView tabBarViewItems;
  final double topPadding;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabBarItems.length,
      initialIndex: 0,
      child: Column(
        children: <Widget>[
          Container(
            height: 50,
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: AppColors.appTabTextPurpule, width: 2),
              borderRadius: BorderRadius.circular(
                8.0,
              ),
            ),
            child: TabBar(
              // controller: _tabController,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  7.0,
                ),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0XFF524E95),
                      Color(0XFFDF216D),
                    ]),
              ),
              labelColor: Colors.white,
              unselectedLabelColor: AppColors.appTabTextPurpule,

              tabs: tabBarItems,
            ),
          ).paddingOnly(left: 15, right: 15, top: topPadding),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 5),
              child: tabBarViewItems,
            ),
          )
        ],
      ),
    );
  }
}
