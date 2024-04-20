import 'package:apptagon_flutter_uis/utils/AppColors.dart';
import 'package:apptagon_flutter_uis/utils/AppConstants.dart';
import 'package:apptagon_flutter_uis/utils/AppFunctions.dart';
import 'package:apptagon_flutter_uis/widgets/BusinessHoursItemWidget.dart';
import 'package:apptagon_flutter_uis/widgets/CustomTileOneWidget.dart';
import 'package:apptagon_flutter_uis/widgets/DescriptionWidget.dart';
import 'package:apptagon_flutter_uis/widgets/ElevatedButtonWithIconWidget.dart';
import 'package:apptagon_flutter_uis/widgets/ImageWidget.dart';
import 'package:apptagon_flutter_uis/widgets/RatingWidget.dart';
import 'package:apptagon_flutter_uis/widgets/VerifiedIconWidget.dart';
import 'package:flutter/material.dart';

class BusinessProfileOneScreen extends StatefulWidget {
  const BusinessProfileOneScreen({super.key});

  @override
  State<BusinessProfileOneScreen> createState() =>
      _BusinessProfileOneScreenState();
}

class _BusinessProfileOneScreenState extends State<BusinessProfileOneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BUSINESS PAGE'),
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: _header(),
              ),
            ),
            SliverToBoxAdapter(
              child: _tabs(),
            ),
            SliverToBoxAdapter(
              child: _businessInfoWidget(),
            ),

            SliverToBoxAdapter(
              child: _businessHours(),
            ),

            // recent horizontal reviews
          ],
        ),
      ),
    );
  }

  Widget _header() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ImageWidget(
          imageUrl: null,
          height: 100,
          width: 130,
          borderRadius: 5,
          padding: 0,
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    AppFunctions.returnTextWithNullValue(
                      data: "business.name",
                      nullText: "N/A",
                    ),
                    maxLines: 2,
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(width: 2),
                  VerifiedIconWidget(
                    isVerified: true,
                  )
                ],
              ),
              const SizedBox(height: 5),
              Text(
                AppFunctions.returnTextWithNullValue(
                    data: "category", nullText: "N/A"),
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(height: 5),
              RatingWidget(
                rating: 5,
                ratingSize: 12,
              ),
              const SizedBox(height: 5),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    size: 12,
                    color: AppColors.kCustomBlackColor,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    AppFunctions.returnTextWithNullValue(
                      data: "21st Danso Street",
                      nullText: "N/A",
                    ),
                    maxLines: 1,
                    style: TextStyle(
                      // fontFamily: AppConstants.fontFamily,
                      color: AppColors.kCustomBlackColor,
                      fontSize: 10,
                      fontWeight: FontWeight.w300,
                    ),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _tabs() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
          decoration: const BoxDecoration(color: Colors.white),
          child: Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text('PRODUCTS'),
                ),
              ),
              const SizedBox(width: 2),
              Expanded(
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text('SERVICES'),
                ),
              ),
              const SizedBox(width: 2),
              Expanded(
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text('REVIEWS'),
                ),
              ),
            ],
          )),
    );
  }

  Widget _businessInfoWidget() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: CustomTileOneWidget(
                  title: 'REGION',
                  isBorderLess: true,
                  subTitle: AppFunctions.returnTextWithNullValue(
                    data: "Ashanti Region",
                    nullText: "N/A",
                  ),
                  padding: 0,
                ),
              ),
              const SizedBox(width: 3),
              Expanded(
                child: CustomTileOneWidget(
                  title: 'PHONE',
                  isBorderLess: true,
                  subTitle: AppFunctions.returnTextWithNullValue(
                    data: "239830303",
                    nullText: "N/A",
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              Expanded(
                child: CustomTileOneWidget(
                  title: 'WEBSITE',
                  isBorderLess: true,
                  subTitle: AppFunctions.returnTextWithNullValue(
                    data: "www.google.com",
                    nullText: "N/A",
                  ),
                  padding: 0,
                ),
              ),
              const SizedBox(width: 3),
              Expanded(
                child: CustomTileOneWidget(
                  title: 'EMAIL',
                  isBorderLess: true,
                  subTitle: AppFunctions.returnTextWithNullValue(
                    data: "business@email.com",
                    nullText: "N/A",
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          DescriptionWidget(
              description:
                  "shop description shop description shop description shop description shop description "),
          const SizedBox(height: 10),
          _callMessageWidget(),
        ],
      ),
    );
  }

  Widget _businessHours() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "BUSINESS HOURS",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 11,
              color: AppColors.kCustomGreyColor,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 5),
          const BusinessHoursItemWidget(
            day: "Monday",
            from: "8:00 AM",
            to: "4:30 PM",
            isClosed: false,
          ),
          const BusinessHoursItemWidget(
            day: "Tuesday",
            from: "8:00 AM",
            to: "4:30 PM",
            isClosed: false,
          ),
          const BusinessHoursItemWidget(
            day: "Wednesday",
            from: "8:00 AM",
            to: "4:30 PM",
            isClosed: false,
          ),
          const BusinessHoursItemWidget(
            day: "Thursday",
            from: "8:00 AM",
            to: "4:30 PM",
            isClosed: true,
          )
        ],
      ),
    );
  }

  Widget _callMessageWidget() {
    return Row(
      children: [
        Expanded(
          child: ElevatedButtonWithIconWidget(
            buttonHeight: 40,
            backgroundColor: AppColors.kPrimaryColor,
            buttonText: 'CALL',
            buttonTextColor: AppColors.kCustomWhiteColor,
            buttonWidth: double.infinity,
            iconData: Icons.call,
            borderRadius: 5,
            onPressed: () {
              // AppFunctions.navigateToPageCustomAnimation(
              //   context: context,
              //   page: PatientConsultationPrescriptionsScreen(
              //     consultation: consultation,
              //     userModel: widget.userModel,
              //   ),
              // );
            },
          ),
        ),
        const SizedBox(width: 5),
        Expanded(
          child: ElevatedButtonWithIconWidget(
            buttonHeight: 40,
            backgroundColor: AppColors.kCustomBlackColor,
            buttonText: 'MESSAGE',
            buttonTextColor: AppColors.kCustomWhiteColor,
            buttonWidth: double.infinity,
            iconData: Icons.message,
            borderRadius: 5,
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
