import 'package:apptagon_flutter_uis/screens/categories/beauty/CategoryBeautyScreen.dart';
import 'package:apptagon_flutter_uis/screens/categories/chat/ChatListOneScreen.dart';
import 'package:apptagon_flutter_uis/screens/categories/chat/ChatOneScreen.dart';
import 'package:apptagon_flutter_uis/screens/categories/home/HomeOneScreen.dart';
import 'package:apptagon_flutter_uis/utils/AppColors.dart';
import 'package:apptagon_flutter_uis/utils/AppFunctions.dart';
import 'package:apptagon_flutter_uis/widgets/CustomListTileWidget.dart';
import 'package:flutter/material.dart';

class CategoryHomeScreen extends StatefulWidget {
  const CategoryHomeScreen({super.key});

  @override
  State<CategoryHomeScreen> createState() => _CategoryHomeScreenState();
}

class _CategoryHomeScreenState extends State<CategoryHomeScreen> {
  List categories = [
    {
      "name": "HOME ONE",
      "page": const HomeOneScreen(),
    },
    // {
    //   "name": "CHAT SCREEN ONE",
    //   "page": const HomeOneScreen(),
    // },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "CHAT",
          style: TextStyle(
            // fontFamily: AppConstants.fontFamily,
            letterSpacing: 0,
          ),
        ),
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: categories.length,
              (BuildContext context, int index) {
                var category = categories[index];

                return Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 2),
                  child: CustomListTileWidget(
                    title: AppFunctions.returnTextWithNullValue(
                      data: category['name'],
                      nullText: "N/A",
                    ),
                    leadingIconData: Icons.event_note_outlined,
                    textColor: AppColors.kCustomBlackColor,
                    iconColor: AppColors.kCustomOffBlueColor,
                    trailingIconData: Icons.arrow_forward,
                    backgroundColor: AppColors.kCustomWhiteColor,
                    borderColor: Colors.grey[300]!,
                    function: () {
                      AppFunctions.navigateToPageCustomAnimation(
                        context: context,
                        page: category['page'],
                      );
                    },
                  ),
                );
              }, // 1000 list items
            ),
          )
        ],
      ),
    );
  }
}
