import 'package:apptagon_flutter_uis/screens/categories/real-estate/RealEstateOneScreen.dart';
import 'package:flutter/material.dart';

class CategoryRealEstateScreen extends StatefulWidget {
  const CategoryRealEstateScreen({super.key});

  @override
  State<CategoryRealEstateScreen> createState() =>
      _CategoryRealEstateScreenState();
}

class _CategoryRealEstateScreenState extends State<CategoryRealEstateScreen> {
  List categories = [
    {
      "name": "REAL ESTATE ONE",
      "page": const RealEstateOneScreen(),
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
          "REAL ESTATE",
          style: TextStyle(
            // fontFamily: AppConstants.fontFamily,
            letterSpacing: 0,
          ),
        ),
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              height: 200,
              width: double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}
