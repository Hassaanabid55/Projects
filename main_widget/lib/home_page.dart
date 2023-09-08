// import 'package:fl_chart/fl_chart.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photo_view/photo_view.dart';

import 'dart:math';

final randomizer = Random();

class HomePage extends StatelessWidget {
  HomePage({super.key});
  var day = 5;
  var totalDays = 28;

  void pointerposition(int day, int totalDays) {
    var width = 21;

    var div = width / totalDays;
    var leftWidth = div * day;
    var rightWidth = width - leftWidth;
    print(leftWidth);
    print(rightWidth);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'You\'re now in your\nluteal phase.',
                    style: GoogleFonts.montserrat(
                      color: const Color.fromRGBO(38, 70, 83, 1),
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'Tracker',
                        style: GoogleFonts.montserrat(
                          color: const Color.fromRGBO(48, 48, 48, 1),
                          fontWeight: FontWeight.w600,
                          fontSize: 11,
                        ),
                      ),
                      const Icon(
                        Icons.heart_broken,
                        color: Color.fromRGBO(250, 101, 89, 1),
                      ),
                    ],
                  )
                ],
              ),
              Text(
                'Next Period: June 12th-16th',
                style: GoogleFonts.montserrat(
                  color: const Color.fromRGBO(49, 47, 47, 1),
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              // PhotoView(
              //   imageProvider: AssetImage('images/graph_updated.png'),
              // ),
              Center(
                child: AspectRatio(
                  aspectRatio: 2.1,
                  child: PhotoView(
                    imageProvider: const AssetImage(
                      'images/graph_updated.png',
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 5,
              ),
              Text(
                'Today\'s insights',
                style: GoogleFonts.montserrat(
                  color: const Color.fromRGBO(38, 70, 83, 1),
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
              const SingleChildScrollView(
                padding: EdgeInsets.all(5),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    InsightCard(),
                    InsightCard(),
                    InsightCard(),
                    InsightCard(),
                    InsightCard(),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'My weekly\nrecommended recipies',
                    style: GoogleFonts.montserrat(
                      color: const Color.fromRGBO(38, 70, 83, 1),
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'See all ->',
                      style: GoogleFonts.montserrat(
                        color: const Color.fromRGBO(250, 101, 89, 1),
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const SingleChildScrollView(
                padding: EdgeInsets.all(5),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    RecommendedRecipie(),
                    RecommendedRecipie(),
                    RecommendedRecipie(),
                    RecommendedRecipie(),
                    RecommendedRecipie(),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'My daily\nrecommended food:',
                style: GoogleFonts.montserrat(
                  color: const Color.fromRGBO(48, 48, 48, 1),
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const RecommendedFood(
                foodType: 'mgnesium',
              ),
              const RecommendedFood(
                foodType: 'iron',
              ),
              const RecommendedFood(
                foodType: 'protien',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InsightCard extends StatelessWidget {
  const InsightCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        height: 113,
        width: 236,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: const Color.fromRGBO(250, 101, 89, 1),
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'images/images.png',
                width: double.infinity,
                height: 76,
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                'General Wellbeing',
                style: GoogleFonts.montserrat(
                  color: const Color.fromRGBO(250, 101, 89, 1),
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RecommendedRecipie extends StatelessWidget {
  const RecommendedRecipie({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: SizedBox(
        height: 193,
        width: 124,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'images/images.png',
                width: 124,
                height: 124,
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                'Kelewele\nGhanian Recipe',
                style: GoogleFonts.montserrat(
                  color: const Color.fromRGBO(52, 52, 52, 1),
                  fontWeight: FontWeight.w700,
                  fontSize: 13,
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.local_fire_department_sharp,
                      color: Color.fromRGBO(250, 101, 89, 1),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Text(
                      '120 Cal',
                      style: GoogleFonts.montserrat(
                        color: const Color.fromRGBO(85, 85, 85, 0.74),
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class RecommendedFood extends StatefulWidget {
  final foodType;
  const RecommendedFood({super.key, required this.foodType});

  @override
  State<RecommendedFood> createState() {
    return _RecommendedFoodState();
  }
}

class _RecommendedFoodState extends State<RecommendedFood> {
  var toggleValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        height: 113,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: const Color.fromRGBO(250, 101, 89, 1),
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(14),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Image.asset(
                'images/images.png',
                width: 88,
                height: 78,
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Have magnesium',
                    style: GoogleFonts.montserrat(
                      color: const Color.fromRGBO(52, 52, 52, 1),
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    'To mitigate headaches',
                    style: GoogleFonts.montserrat(
                      color: const Color.fromRGBO(0, 0, 0, 1),
                      fontWeight: FontWeight.w300,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Radio(
                toggleable: true,
                splashRadius: 35,
                activeColor: const Color.fromRGBO(250, 101, 89, 1),
                value: widget.foodType,
                onChanged: (value) {
                  setState(() {
                    toggleValue = value;
                  });
                },
                groupValue: toggleValue,
              )
            ],
          ),
        ),
      ),
    );
  }
}
