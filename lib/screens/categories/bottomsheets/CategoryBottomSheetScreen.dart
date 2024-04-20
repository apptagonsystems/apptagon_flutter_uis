import 'package:apptagon_flutter_uis/screens/categories/onboarding/OnboardingOneScreen.dart';
import 'package:apptagon_flutter_uis/utils/AppColors.dart';
import 'package:apptagon_flutter_uis/utils/AppFunctions.dart';
import 'package:apptagon_flutter_uis/widgets/CustomListTileWidget.dart';
import 'package:apptagon_flutter_uis/widgets/ElevatedButtonWidget.dart';
import 'package:flutter/material.dart';

class CategoryBottomSheetScreen extends StatefulWidget {
  const CategoryBottomSheetScreen({super.key});

  @override
  State<CategoryBottomSheetScreen> createState() =>
      _CategoryBottomSheetScreenState();
}

class _CategoryBottomSheetScreenState extends State<CategoryBottomSheetScreen> {
  List categories = [
    {
      "name": "LOGOUT BOTTOM SHEET",
      "page": () {},
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ONBOARDING",
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
                    function: () {},
                  ),
                );
              }, // 1000 list items
            ),
          )
        ],
      ),
    );
  }

  showLogoutModal() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: Container(
          height: 200,
          decoration: const BoxDecoration(color: Colors.white),
          child: Column(
            children: [
              Container(
                height: 4,
                width: 70,
                margin: const EdgeInsets.only(top: 15, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Text(
                "Logout",
                style: TextStyle(
                  color: AppColors.kCustomBlackColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Divider(),
              Text(
                "Are you sure you want to logout",
                style: TextStyle(
                  color: AppColors.kCustomGreyColor,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButtonWidget(
                          buttonText: "Cancel",
                          buttonHeight: 40,
                          backgroundColor: Colors.grey[100]!,
                          borderRadius: 20,
                          buttonTextColor: AppColors.kPrimaryColor,
                          buttonWidth: double.infinity,
                          onPressed: () {},
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButtonWidget(
                          buttonText: "Yes, Logout",
                          buttonHeight: 40,
                          borderRadius: 20,
                          backgroundColor: AppColors.kPrimaryColor,
                          buttonTextColor: AppColors.kCustomWhiteColor,
                          buttonWidth: double.infinity,
                          onPressed: () {},
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
