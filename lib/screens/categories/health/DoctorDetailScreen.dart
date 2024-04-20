import 'package:apptagon_flutter_uis/screens/categories/health/Doctor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorDetailScreen extends StatefulWidget {
  final Doctor doctor;
  const DoctorDetailScreen({super.key, required this.doctor});

  @override
  State<DoctorDetailScreen> createState() => _DoctorDetailScreenState();
}

class _DoctorDetailScreenState extends State<DoctorDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Hero(
            tag: 'assets/images/${widget.doctor.doctorPicture}',
            child: Material(
              type: MaterialType.transparency,
              child: Container(
                alignment: Alignment.topCenter,
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: BoxDecoration(
                  color: Color(0xFFEAEAEA),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/${widget.doctor.doctorPicture}',
                    ),
                  ),
                ),
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 24,
                            width: 24,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: Svg('assets/svg/icon-back.svg'),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 24,
                            width: 24,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: Svg('assets/svg/icon-bookmark.svg'),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            height: MediaQuery.of(context).size.height * 0.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 24,
                ),
                Hero(
                  tag: widget.doctor.doctorName,
                  child: Material(
                    color: Colors.transparent,
                    child: Text(
                      widget.doctor.doctorName,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  '${widget.doctor.doctorSpecialty} • ${widget.doctor.doctorHospital} ',
                  style: Theme.of(context).textTheme.caption,
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  '${widget.doctor.doctorName} • ${widget.doctor.doctorDescription} ',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 5,
                  style: Theme.of(context).textTheme.caption!.copyWith(
                        color: Color(0xFFC4C4C4),
                        fontFamily: GoogleFonts.sourceSansPro().fontFamily,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.w400,
                      ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Spacer(),
                IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Experience',
                            style:
                                Theme.of(context).textTheme.caption!.copyWith(
                                      color: Color(0xFF25282B),
                                      fontWeight: FontWeight.w400,
                                    ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                widget.doctor.doctorYearOfExperience,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .copyWith(
                                      color: Color(0xFF4485FD),
                                      fontWeight: FontWeight.w400,
                                    ),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                'yr',
                                style: Theme.of(context).textTheme.headline5,
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const VerticalDivider(
                        thickness: 1,
                        color: Color(0x50CACCCF),
                      ),
                      Column(
                        children: [
                          Text(
                            'Patient',
                            style:
                                Theme.of(context).textTheme.caption!.copyWith(
                                      color: Color(0xFF25282B),
                                      fontWeight: FontWeight.w400,
                                    ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                widget.doctor.doctorNumberOfPatient,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .copyWith(
                                      color: Color(0xFF4485FD),
                                      fontWeight: FontWeight.w400,
                                    ),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                'ps',
                                style: Theme.of(context).textTheme.headline5,
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const VerticalDivider(
                        thickness: 1,
                        color: Color(0x50CACCCF),
                      ),
                      Column(
                        children: [
                          Text(
                            'Rating',
                            style:
                                Theme.of(context).textTheme.caption!.copyWith(
                                      color: Color(0xFF25282B),
                                      fontWeight: FontWeight.w400,
                                    ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                widget.doctor.doctorRating,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .copyWith(
                                      color: Color(0xFF4485FD),
                                      fontWeight: FontWeight.w400,
                                    ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 56,
                      width: 56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color(0xFF4485FD),
                        image: const DecorationImage(
                          image: Svg(
                            'assets/svg/icon-chat.svg',
                            size: Size(
                              36,
                              36,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Container(
                      height: 56,
                      width: MediaQuery.of(context).size.width - 104,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color(0xFF00CC6A),
                      ),
                      child: Center(
                        child: Text(
                          'Make an Appoinment',
                          style: Theme.of(context).textTheme.caption!.copyWith(
                                color: Color(0xFFFFFFFF),
                                fontWeight: FontWeight.w700,
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
