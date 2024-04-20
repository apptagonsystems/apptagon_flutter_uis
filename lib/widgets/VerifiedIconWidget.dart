import 'package:apptagon_flutter_uis/utils/AppColors.dart';
import 'package:flutter/material.dart';

class VerifiedIconWidget extends StatelessWidget {
  final bool isVerified;
  const VerifiedIconWidget({super.key, required this.isVerified});

  @override
  Widget build(BuildContext context) {
    return isVerified ? Icon(
        Icons.verified,
        size: 14,
        color: AppColors.kPrimaryColor,
      ): const SizedBox.shrink();
  }
}