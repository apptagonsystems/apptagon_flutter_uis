import 'package:apptagon_flutter_uis/screens/categories/profiles/BusinessProfileOneScreen.dart';
import 'package:apptagon_flutter_uis/utils/AppColors.dart';
import 'package:apptagon_flutter_uis/utils/AppFunctions.dart';
import 'package:apptagon_flutter_uis/widgets/CustomListTileWidget.dart';
import 'package:flutter/material.dart';

class CategoryProfilesScreen extends StatefulWidget {
  const CategoryProfilesScreen({super.key});

  @override
  State<CategoryProfilesScreen> createState() => _CategoryProfilesScreenState();
}

class _CategoryProfilesScreenState extends State<CategoryProfilesScreen> {
  List categories = [
    {
      "name": "BUSINESS PROFILE ONE",
      "page": const BusinessProfileOneScreen(),
    },
    // {
    //   "name": "BEAUTY & SALON",
    //   "page": const CategoryBeautyScreen(),
    // },
    // {
    //   "name": "CHARITY & DONATION",
    //   "page": const CategoryCharityScreen(),
    // },
    // {
    //   "name": "ECOMMERCE",
    //   "page": const CategoryEcommerceScreen(),
    // },
    // {
    //   "name": "FITNESS",
    //   "page": const CategoryFitnessScreen(),
    // },
    // {
    //   "name": "FASHION",
    //   "page": const CategoryFashionScreen(),
    // },
    // {
    //   "name": "FINANCIAL",
    //   "page": const CategoryFinancialScreen(),
    // },
    // {
    //   "name": "HEALTH & MEDICAL",
    //   "page": const CategoryHealthScreen(),
    // },
    // {
    //   "name": "ONBOARDING",
    //   "page": const CategoryOnboardingScreen(),
    // },
    // {
    //   "name": "NEWS",
    //   "page": const CategoryNewsScreen(),
    // },
    // {
    //   "name": "MOVIES",
    //   "page": const CategoryMoviesScreen(),
    // },
    // {
    //   "name": "RENTAL",
    //   "page": const CategoryRentalScreen(),
    // },
    // {
    //   "name": "RESTAURANT",
    //   "page": const CategoryRestaurantScreen(),
    // },
    // {
    //   "name": "REAL ESTATE",
    //   "page": const CategoryRealEstateScreen(),
    // },
    // {
    //   "name": "SERVICES",
    //   "page": const CategoryServicesScreen(),
    // },
    // {
    //   "name": "PROFILES",
    //   "page": const CategoryProfilesScreen(),
    // },
    // {
    //   "name": "TRAVEL",
    //   "page": const CategoryTravelScreen(),
    // },
    // {
    //   "name": "TAXI , COURIER, MAPS",
    //   "page": const CategoryTaxiScreen(),
    // },
    // {
    //   "name": "SOCIAL",
    //   "page": const CategorySocialScreen(),
    // },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "PROFILES",
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
