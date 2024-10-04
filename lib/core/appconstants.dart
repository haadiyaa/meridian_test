import 'package:flutter/material.dart';

class AppConstants {
  // =====================HEIGHT==================================
  static const SizedBox smallVerticalSpacing = SizedBox(height: 8);
  static const SizedBox mediumVerticalSpacing = SizedBox(height: 16);
  static const SizedBox largeVerticalSpacing = SizedBox(height: 32);

  // =====================WIDTH=====================================
  static const SizedBox smallHorizontalSpacing = SizedBox(width: 10);
  static const SizedBox mediumHorizontalSpacing = SizedBox(width: 16);
  static const SizedBox largeHorizontalSpacing = SizedBox(width: 32);

  //======================IMAGES===================================
  static const String profileImage='assets/images/profilepic.png';
  static const String usersProfileImage='assets/images/users.png';

  //============================STRINGS===========================
  static const List<String> filterOptions = [
    'Trending',
    'Relationship',
    'Self Care',
    'Nature',
  ];
}
