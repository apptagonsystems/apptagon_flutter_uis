import 'package:apptagon_flutter_uis/screens/categories/health/Doctor.dart';
import 'package:apptagon_flutter_uis/screens/categories/health/DoctorDetailScreen.dart';
import 'package:apptagon_flutter_uis/utils/AppFunctions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class HealthHomeScreen extends StatefulWidget {
  const HealthHomeScreen({super.key});

  @override
  State<HealthHomeScreen> createState() => _HealthHomeScreenState();
}

class _HealthHomeScreenState extends State<HealthHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeScreenNavbar(),
                const SizedBox(
                  height: 30,
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.headline3,
                    children: <TextSpan>[
                      const TextSpan(
                        text: 'Find ',
                      ),
                      TextSpan(
                        text: 'your doctor',
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                              color: Color(0xFFA0A4A8),
                            ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  height: 56,
                  padding: const EdgeInsets.only(
                    right: 8,
                    left: 16,
                    bottom: 5,
                    top: 6,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xFFF6F6F6),
                  ),
                  child: TextField(
                    style: Theme.of(context).textTheme.caption!.copyWith(
                          color: Color(0xFF25282B),
                        ),
                    cursorHeight: 24,
                    decoration: InputDecoration(
                      suffixIcon: const Icon(
                        Icons.search,
                        color: Color(0xFF25282B),
                      ),
                      suffixIconConstraints: const BoxConstraints(
                        maxHeight: 24,
                      ),
                      hintText: 'Search doctor, medicines etc',
                      hintStyle: Theme.of(context).textTheme.bodyMedium,
                      contentPadding: const EdgeInsets.only(bottom: 5),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                DoctorAppGridMenu(),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Top Doctors',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Text(
                      'View all',
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: Color(0xFF4485FD),
                          ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                TopDoctorsList()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget HomeScreenNavbar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 24,
          width: 24,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: Svg(
                'assets/svg/icon-burger.svg',
                size: Size(
                  24,
                  24,
                ),
              ),
            ),
          ),
        ),
        Container(
          width: 36,
          height: 36,
          child: const CircleAvatar(
            backgroundColor: Color(0xFF4485FD),
            backgroundImage: NetworkImage(
                'https://blogger.googleusercontent.com/img/a/AVvXsEiRB_dB-wXqJdvt26dkR-vqOXUjacfxAQIgFNMHl_czjMNDOh6VZVc-muCczDKZh-VU0JqUYV1M9h25ZooLGqhVfwexQO6zNY1jxeMDu0-SpfEPe8xkF7re1eldAkKld9Ct1YzesFmHpQK9wlPK330AXA85gsmDBURTQm3i7r08g6vO7KNtAPyDgeUIaQ=s740'),
          ),
        )
      ],
    );
  }

  Widget DoctorAppGridMenu() {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 8,
      ),
      padding: EdgeInsets.zero,
      itemCount: doctorMenu.length,
      itemBuilder: (BuildContext context, index) {
        return GestureDetector(
          child: Container(
            constraints: const BoxConstraints(
              maxHeight: 81,
            ),
            child: Column(
              children: [
                Container(
                  constraints: const BoxConstraints(
                    minHeight: 56,
                    minWidth: 56,
                    maxHeight: 69,
                    maxWidth: 69,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Svg(
                        'assets/svg/${doctorMenu[index].image}',
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Expanded(
                  child: Text(
                    doctorMenu[index].name,
                    style: Theme.of(context).textTheme.caption,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget TopDoctorsList() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: topDoctors.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            AppFunctions.navigateToPageCustomAnimation(
              context: context,
              page: DoctorDetailScreen(
                doctor: Doctor(
                  doctorName: topDoctors[index].doctorName,
                  doctorDescription: topDoctors[index].doctorDescription,
                  doctorHospital: topDoctors[index].doctorHospital,
                  doctorIsOpen: topDoctors[index].doctorIsOpen,
                  doctorNumberOfPatient:
                      topDoctors[index].doctorNumberOfPatient,
                  doctorPicture: topDoctors[index].doctorPicture,
                  doctorRating: topDoctors[index].doctorRating,
                  doctorSpecialty: topDoctors[index].doctorSpecialty,
                  doctorYearOfExperience:
                      topDoctors[index].doctorYearOfExperience,
                ),
              ),
            );
          },
          child: TopDoctorsCard(
            doctor: topDoctors[index],
          ),
        );
      },
    );
  }

  Widget TopDoctorsCard({required Doctor doctor}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Container(
        color: Colors.transparent,
        height: 80,
        width: MediaQuery.of(context).size.width - 32,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Hero(
              tag: 'assets/images/${doctor.doctorPicture}',
              child: Material(
                type: MaterialType.transparency,
                child: Container(
                  width: 88,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/images/${doctor.doctorPicture}',
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Hero(
                    tag: doctor.doctorName,
                    child: Material(
                      color: Colors.transparent,
                      child: Text(
                        doctor.doctorName,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                  ),
                  Text(
                    '${doctor.doctorSpecialty} • ${doctor.doctorHospital}',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: Theme.of(context).textTheme.caption,
                  ),
                  const Spacer(),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 136,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            RatingBar.builder(
                              itemSize: 12,
                              initialRating: double.parse(
                                doctor.doctorRating,
                              ),
                              minRating: 1,
                              direction: Axis.horizontal,
                              itemCount: 5,
                              itemPadding: EdgeInsets.zero,
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Color(0xFFFFE848),
                              ),
                              onRatingUpdate: (rating) {
                                debugPrint(rating.toString());
                              },
                              unratedColor: Color(0xFFEAEAEA),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              '(${doctor.doctorNumberOfPatient})',
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ],
                        ),
                        Container(
                          height: 24,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 13,
                            vertical: 3,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: doctor.doctorIsOpen
                                ? Color(0xffCCF5E1)
                                : Color(0xffF7E4D9),
                          ),
                          child: Text(
                            doctor.doctorIsOpen ? 'Open' : 'Close',
                            style:
                                Theme.of(context).textTheme.caption!.copyWith(
                                      color: doctor.doctorIsOpen
                                          ? Color(0xFF00CC6A)
                                          : Color(0xffCC4900),
                                    ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
