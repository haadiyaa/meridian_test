import 'package:flutter/material.dart';
import 'package:meridian_test/core/appconstants.dart';
import 'package:meridian_test/data/model/mediamodel.dart';

class Detailspage extends StatelessWidget {
  const Detailspage({super.key, required this.mediaList});

  final MediaModel mediaList;

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
              mediaList.title,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
            AppConstants.mediumVerticalSpacing,
            Text(
              mediaList.body,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 51, 11, 11),
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
