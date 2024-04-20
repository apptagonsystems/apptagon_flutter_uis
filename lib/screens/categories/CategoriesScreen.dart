import 'package:apptagon_flutter_uis/screens/TestScreen.dart';
import 'package:apptagon_flutter_uis/screens/categories/auth/CategoryAuthScreen.dart';
import 'package:apptagon_flutter_uis/screens/categories/beauty/CategoryBeautyScreen.dart';
import 'package:apptagon_flutter_uis/screens/categories/charity/CategoryCharityScreen.dart';
import 'package:apptagon_flutter_uis/screens/categories/chat/CategoryChatScreen.dart';
import 'package:apptagon_flutter_uis/screens/categories/ecommerce/CategoryEcommerceScreen.dart';
import 'package:apptagon_flutter_uis/screens/categories/fashion/CategoryFashionScreen.dart';
import 'package:apptagon_flutter_uis/screens/categories/financial/CategoryFinancialScreen.dart';
import 'package:apptagon_flutter_uis/screens/categories/fitness/CategoryFitnessScreen.dart';
import 'package:apptagon_flutter_uis/screens/categories/health/CategoryHealthScreen.dart';
import 'package:apptagon_flutter_uis/screens/categories/home/CategoryHomeScreen.dart';
import 'package:apptagon_flutter_uis/screens/categories/movies/CategoryMoviesScreen.dart';
import 'package:apptagon_flutter_uis/screens/categories/news/CategoryNewsScreen.dart';
import 'package:apptagon_flutter_uis/screens/categories/onboarding/CategoryOnboardingScreen.dart';
import 'package:apptagon_flutter_uis/screens/categories/profiles/CategoryProfilesScreen.dart';
import 'package:apptagon_flutter_uis/screens/categories/real-estate/CategoryRealEstateScreen.dart';
import 'package:apptagon_flutter_uis/screens/categories/rental/CategoryRentalScreen.dart';
import 'package:apptagon_flutter_uis/screens/categories/restaurant/CategoryRestaurantScreen.dart';
import 'package:apptagon_flutter_uis/screens/categories/services/CategoryServicesScreen.dart';
import 'package:apptagon_flutter_uis/screens/categories/social/CategorySocialScreen.dart';
import 'package:apptagon_flutter_uis/screens/categories/taxi/CategoryTaxiScreen.dart';
import 'package:apptagon_flutter_uis/screens/categories/travel/CategoryTravelScreen.dart';
import 'package:apptagon_flutter_uis/screens/otp/CategoryOTPScreen.dart';
import 'package:apptagon_flutter_uis/utils/AppColors.dart';
import 'package:apptagon_flutter_uis/utils/AppFunctions.dart';
import 'package:apptagon_flutter_uis/widgets/CustomListTileWidget.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  List categories = [
    {
      "name": "TEST",
      "page": const TestScreen(),
    },
    {
      "name": "AUTHENTICATION",
      "page": const CategoryAuthScreen(),
    },
    {
      "name": "BEAUTY & SALON",
      "page": const CategoryBeautyScreen(),
    },
    {
      "name": "CHARITY & DONATION",
      "page": const CategoryCharityScreen(),
    },
    {
      "name": "CHAT",
      "page": const CategoryChatScreen(),
    },
    {
      "name": "ECOMMERCE",
      "page": const CategoryEcommerceScreen(),
    },
    {
      "name": "FITNESS",
      "page": const CategoryFitnessScreen(),
    },
    {
      "name": "FASHION",
      "page": const CategoryFashionScreen(),
    },
    {
      "name": "FINANCIAL",
      "page": const CategoryFinancialScreen(),
    },
    {
      "name": "HOME",
      "page": const CategoryHomeScreen(),
    },
    {
      "name": "HEALTH & MEDICAL",
      "page": const CategoryHealthScreen(),
    },
    {
      "name": "ONBOARDING",
      "page": const CategoryOnboardingScreen(),
    },
    {
      "name": "OTP",
      "page": const CategoryOTPScreen(),
    },
    {
      "name": "NEWS",
      "page": const CategoryNewsScreen(),
    },
    {
      "name": "MOVIES",
      "page": const CategoryMoviesScreen(),
    },
    {
      "name": "RENTAL",
      "page": const CategoryRentalScreen(),
    },
    {
      "name": "RESTAURANT",
      "page": const CategoryRestaurantScreen(),
    },
    {
      "name": "REAL ESTATE",
      "page": const CategoryRealEstateScreen(),
    },
    {
      "name": "SERVICES",
      "page": const CategoryServicesScreen(),
    },
    {
      "name": "PROFILES",
      "page": const CategoryProfilesScreen(),
    },
    {
      "name": "TRAVEL",
      "page": const CategoryTravelScreen(),
    },
    {
      "name": "TAXI , COURIER, MAPS",
      "page": const CategoryTaxiScreen(),
    },
    {
      "name": "SOCIAL",
      "page": const CategorySocialScreen(),
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              height: 200,
              width: double.infinity,
            ),
          ),
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
