import 'package:apptagon_flutter_uis/utils/AppColors.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';

class DescriptionWidget extends StatelessWidget {
  final String? description;
  const DescriptionWidget({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return _descWidget(desc: description);
  }



  Widget _descWidget({required String? desc}) {
    if (desc == null) {
      return const SizedBox.shrink();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "DESCRIPTION",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 11,
            color: AppColors.kCustomGreyColor,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 5),
        ExpandableText(
          desc,
          expandText: 'show more',
          collapseText: 'show less',
          maxLines: 4,
          linkColor: AppColors.kPrimaryColor,
        ),
      ],
    );
  }
}