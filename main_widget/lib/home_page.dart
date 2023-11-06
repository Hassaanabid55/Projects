import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class InsightCardDetail extends StatelessWidget {
  const InsightCardDetail(
      {super.key,
      required this.title,
      required this.image,
      required this.text});

  final String title;
  final String image;
  final String text;

  Widget getPlaceholderImage(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.black,
      child: Image.asset(
        "images/placeholder_icon.png",
        height: 40.0,
        width: 40.0,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 324,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: CachedNetworkImageProvider(
                image,
              ),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 40,
                left: 20,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset(
                    'images/back button.svg',
                  ),
                ),
              ),
              Positioned(
                bottom: 87,
                left: 21,
                child: Text(
                  'General Wellbeing',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: Container(
                  height: 24,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
        ),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: const Color.fromRGBO(38, 70, 83, 1),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Html(
                    data: '<p>$text</p>',
                    style: {
                      'p': Style(
                        fontWeight: FontWeight.w400,
                        fontSize: FontSize(13),
                        color: const Color.fromRGBO(49, 49, 47, 1),
                      )
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
