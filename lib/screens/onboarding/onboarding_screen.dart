import 'package:dayexp/screens/tab%20view/tab_view_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:dayexp/res/app_colors.dart';
import 'package:dayexp/res/app_constants.dart';
import 'package:dayexp/res/images.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const OnBoardingWidget(
              title: 'Record Spendings',
              image: Images.onB1,
            ),
            const OnBoardingWidget(
              title: 'View Graphicaly',
              image: Images.onB2,
            ),
            const OnBoardingWidget(
              title: 'Plan Accordingly',
              image: Images.onB3,
            ),
            const SizedBox(
              height: 50,
            ),
            ButtonWIdget(
              onTap: () {
                Get.offAll(() => TabViewScreen());
              },
              title: 'Get Started',
            )
          ],
        ),
      ),
    );
  }
}

class ButtonWIdget extends StatelessWidget {
  const ButtonWIdget({
    Key? key,
    required this.title,
    this.onTap,
  }) : super(key: key);

  final String title;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.primaryColor,
          boxShadow: [
            AppConstants.homeContainerShadow,
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppColors.lightGrey,
            ),
          ),
        ),
      ),
    );
  }
}

class OnBoardingWidget extends StatelessWidget {
  const OnBoardingWidget({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);
  final String title;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image,
          height: Get.size.width * 0.2,
        ),
        Text(
          title,
          style: AppConstants.homeSubtitleStyle,
        ),
        Divider(
          endIndent: Get.size.width * 0.3,
          indent: Get.size.width * 0.3,
          color: AppColors.primaryColor,
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
