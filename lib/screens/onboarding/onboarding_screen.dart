import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../common/custom_button.dart';
import '../../constants/colors.dart';
import 'onboarding_view.dart';

const List onBoardingList = [
  {
    'title': 'Connect with\nEveryone on Globe',
    'description':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam maecenas mi non sed ut odio. Non, justo, sed facilisi et. Eget viverra urna, vestibulum egestas faucibus egestas. Sagittis nam velit volutpat eu nunc.',
    'image': 'assets/images/onboarding1.png',
  },
  {
    'title': 'Connect with\nEveryone on Globe',
    'description':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam maecenas mi non sed ut odio. Non, justo, sed facilisi et. Eget viverra urna, vestibulum egestas faucibus egestas. Sagittis nam velit volutpat eu nunc.',
    'image': 'assets/images/onboarding2.png',
  }
];

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController controller = PageController(initialPage: 0);

  // @override
  // initState() {
  //   super.initState();
  //   controller.addListener(() {
  //     setState(() {});
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height * 0.8,
            child: PageView(
              controller: controller,
              children: List.generate(
                  onBoardingList.length, (index) => OnboardingView(index)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                SmoothPageIndicator(
                    controller: controller, // PageController
                    count: onBoardingList.length,
                    effect: ExpandingDotsEffect(
                      dotHeight: 10,
                      dotWidth: 22,
                      activeDotColor: AppColors.heading,
                      radius: 100,
                      dotColor: AppColors.lightText,
                    ), // your preferred effect
                    onDotClicked: (index) {}),
                const SizedBox(height: 20),
                Row(
                  children: [
                    GradientButton(
                      text: 'Get Started',
                      width: 150,
                    ),
                    const Spacer(),
                    GradientButton(
                      text: 'Skip',
                      gradientColors: const [AppColors.white, AppColors.white],
                      textColor: AppColors.text,
                      width: 120,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
