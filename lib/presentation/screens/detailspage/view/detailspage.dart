import 'package:flutter/material.dart';
import 'package:meridian_test/core/appcolors.dart';
import 'package:meridian_test/core/appconstants.dart';

class Detailspage extends StatelessWidget {
  const Detailspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Title',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
            AppConstants.mediumVerticalSpacing,
            Text(
              'hgfdfgfcgh',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: MyAppColors.textColor,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
