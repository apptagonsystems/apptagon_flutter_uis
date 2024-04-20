import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class EcommerceStaggeredGrid extends StatefulWidget {
  const EcommerceStaggeredGrid({Key? key}) : super(key: key);

  @override
  State<EcommerceStaggeredGrid> createState() => _EcommerceStaggeredGridState();
}

class _EcommerceStaggeredGridState extends State<EcommerceStaggeredGrid> {
  List<String> categories = [
    "All Items",
    "Dress",
    "Hat",
    "Watch",
  ];

  List<String> icons = [
    'all_items_icon',
    'dress_icon',
    'hat_icon',
    'watch_icon',
  ];

  List<String> images = [
    'image-01.png',
    'image-02.png',
    'image-03.png',
    'image-04.png',
    'image-05.jpg',
    'image-06.jpg',
    'image-07.jpg',
    'image-08.jpg',
  ];

  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Hello, Welcome 👋',
                          style: GoogleFonts.encodeSans(
                            fontWeight: FontWeight.w400,
                            color: Color(0xff1b2028),
                            fontSize:
                                MediaQuery.of(context).size.width / 100 * 3.5,
                          )),
                      Text('Albert Stevano',
                          style: GoogleFonts.encodeSans(
                            fontWeight: FontWeight.w700,
                            color: Color(0xff1b2028),
                            fontSize:
                                MediaQuery.of(context).size.width / 100 * 4,
                          )),
                    ],
                  ),
                  const CircleAvatar(
                    radius: 20,
                    backgroundColor: Color(0xffa4aaad),
                    backgroundImage: NetworkImage(
                        'https://randomuser.me/api/portraits/women/90.jpg'),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      style: GoogleFonts.encodeSans(
                        fontWeight: FontWeight.w400,
                        color: Color(0xffa4aaad),
                        fontSize: MediaQuery.of(context).size.width / 100 * 3.5,
                      ),
                      controller: TextEditingController(),
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 13,
                          ),
                          prefixIcon: const IconTheme(
                            data: IconThemeData(
                              color: Color(0xffa4aaad),
                            ),
                            child: Icon(Icons.search),
                          ),
                          hintText: 'Sarch clothes...',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: const BorderSide(
                              color: Color(0xffededed),
                            ),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: const BorderSide(
                              color: Color(0xffededed),
                            ),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: const BorderSide(
                              color: Color(0xffededed),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: const BorderSide(
                              color: Color(0xffededed),
                            ),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: const BorderSide(
                              color: Color(0xffededed),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: const BorderSide(
                              color: Color(0xffededed),
                            ),
                          ),
                          hintStyle: GoogleFonts.encodeSans(
                            fontWeight: FontWeight.w400,
                            color: Color(0xffa4aaad),
                            fontSize:
                                MediaQuery.of(context).size.width / 100 * 3.5,
                          )),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Container(
                    height: 49,
                    width: 49,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: Color(0xff111111),
                    ),
                    child: SvgPicture.asset(
                      'assets/filter_icon.svg',
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            SizedBox(
              width: double.infinity,
              height: 36,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        current = index;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                        left: index == 0 ? 24.0 : 15,
                        right: index == categories.length - 1 ? 24.0 : 0,
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      height: 36,
                      decoration: BoxDecoration(
                        color: current == index
                            ? Color(0xff292526)
                            : Color(0xffffffff),
                        borderRadius: BorderRadius.circular(8),
                        border: current == index
                            ? null
                            : Border.all(
                                color: Color(0xffededed),
                                width: 1,
                              ),
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(current == index
                              ? 'assets/${icons[index]}_selected.svg'
                              : 'assets/${icons[index]}_unselected.svg'),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(categories[index],
                              style: GoogleFonts.encodeSans(
                                fontWeight: FontWeight.w500,
                                color: current == index
                                    ? Color(0xffffffff)
                                    : Color(0xff1b2028),
                                fontSize:
                                    MediaQuery.of(context).size.width / 100 * 3,
                              ))
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            MasonryGridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 23,
              itemCount: images.length,
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
              ),
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Positioned(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: Image.asset(
                              'assets/images/${images[index]}',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          right: 12,
                          top: 12,
                          child: GestureDetector(
                            onTap: () {},
                            child: SvgPicture.asset(
                              'assets/favorite_cloth_icon_unselected.svg',
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text('Modern light clothes',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.encodeSans(
                          fontWeight: FontWeight.w600,
                          color: Color(0xff1b2028),
                          fontSize:
                              MediaQuery.of(context).size.width / 100 * 3.5,
                        )),
                    Text('Dress modern',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.encodeSans(
                          fontWeight: FontWeight.w400,
                          color: Color(0xffa4aaad),
                          fontSize:
                              MediaQuery.of(context).size.width / 100 * 2.5,
                        )),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('\$212.99',
                            style: GoogleFonts.encodeSans(
                              fontWeight: FontWeight.w600,
                              color: Color(0xff1b2028),
                              fontSize:
                                  MediaQuery.of(context).size.width / 100 * 3.5,
                            )),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Color(0xffffd33c),
                              size: 16,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text('5.0',
                                style: GoogleFonts.encodeSans(
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff1b2028),
                                  fontSize: MediaQuery.of(context).size.width /
                                      100 *
                                      3,
                                )),
                          ],
                        ),
                      ],
                    )
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
