import 'package:authentication/authentication.dart';
import 'package:flutter/material.dart';

import 'package:kib_design_system/kib_design_system.dart';

class OnBoardingItem {
  String title;
  String description;
  String backgroundImage;

  OnBoardingItem({
    required this.title,
    required this.description,
    required this.backgroundImage,
  });
}

List<OnBoardingItem> OnBoardingItems(BuildContext context) {
  return [
    OnBoardingItem(
      title: context.authLocal.onBoardingTitle1,
      description: context.authLocal.onBoardingDescription1,
      backgroundImage: context.onBoardingTheme.properties.imagePath1,
    ),
    OnBoardingItem(
      title: context.authLocal.onBoardingTitle2,
      description: context.authLocal.onBoardingDescription2,
      backgroundImage: context.onBoardingTheme.properties.imagePath2,
    ),
    OnBoardingItem(
      title: context.authLocal.onBoardingTitle3,
      description: context.authLocal.onBoardingDescription3,
      backgroundImage: context.onBoardingTheme.properties.imagePath3,
    ),
  ];
}
