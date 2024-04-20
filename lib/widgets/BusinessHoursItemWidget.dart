import 'package:apptagon_flutter_uis/utils/AppColors.dart';
import 'package:apptagon_flutter_uis/utils/AppFunctions.dart';
import 'package:flutter/material.dart';

class BusinessHoursItemWidget extends StatelessWidget {
  final String day;
  final String? from;
  final String? to;
  final bool isClosed;

  const BusinessHoursItemWidget(
      {super.key,
      required this.day,
      this.from,
      this.to,
      required this.isClosed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  isClosed ? Icons.toggle_off : Icons.toggle_on,
                  color: isClosed ? Colors.grey[300] : AppColors.kPrimaryColor,
                  size: 40,
                ),
                Expanded(
                  child: Text(
                    day,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.kCustomGreyColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 5),
          isClosed
              ? const SizedBox.shrink()
              : Expanded(
                  flex: 1,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey[300]!,
                        ),
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "From",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 11,
                            color: AppColors.kCustomGreyColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          AppFunctions.returnTextWithNullValue(
                              data: from, nullText: "N/A"),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 11,
                            color: AppColors.kCustomBlackColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
          isClosed
              ? const SizedBox.shrink()
              : Expanded(
                  flex: 1,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey[300]!,
                        ),
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "To",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 11,
                            color: AppColors.kCustomGreyColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          AppFunctions.returnTextWithNullValue(
                              data: to, nullText: "N/A"),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 11,
                            color: AppColors.kCustomBlackColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
          isClosed
              ? Expanded(
                  flex: 2,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.grey[100]!,
                        border: Border.all(
                          color: Colors.grey[300]!,
                        ),
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.bedtime_outlined,
                          color: AppColors.kCustomGreyColor,
                          size: 14,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          AppFunctions.returnTextWithNullValue(
                              data: "Closed", nullText: "N/A"),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 11,
                            color: AppColors.kCustomGreyColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              : const SizedBox.shrink()
        ],
      ),
    );
  }
}
