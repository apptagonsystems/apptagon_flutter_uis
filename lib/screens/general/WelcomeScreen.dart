import 'package:apptagon_flutter_uis/utils/AppColors.dart';
import 'package:apptagon_flutter_uis/utils/AppRoutes.dart';
import 'package:apptagon_flutter_uis/widgets/ElevatedButtonWidget.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(child: Text("WelcomeScreen")),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButtonWidget(
              backgroundColor: AppColors.kPrimaryColor,
              buttonText: "GET STARTED",
              buttonTextColor: AppColors.kCustomWhiteColor,
              borderRadius: 10,
              buttonHeight: 50,
              buttonWidth: double.infinity,
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(
                  AppRoutes.mainPageRoute,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
