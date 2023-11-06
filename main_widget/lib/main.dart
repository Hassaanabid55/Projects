import 'package:flutter/material.dart';
import 'package:main_widget/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const InsightCardDetail(
        title: 'Your post-natal cycle',
        image:
            'https://images.pexels.com/photos/8244392/pexels-photo-8244392.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        text:
            'Start gentle exercise, by engage in light actvities like walking, stretching, or postnatal yoga to improve blood circulation and boost your energy levels. Take it slow and increase intensity as your body heals. Spend time outdoors with your baby. Enjoy the therapeutic benefits of nature. Take short strolls in nearby parks or gardens with your baby to uplift your mood and strengthen the bond between you both.',
      ),
    );
  }
}
