
import 'package:flutter/material.dart';
import 'package:meridian_test/core/appcolors.dart';
import 'package:meridian_test/core/appconstants.dart';
import 'package:shimmer/shimmer.dart';

class LoaderTile extends StatelessWidget {
  const LoaderTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        separatorBuilder: (context, index) => AppConstants.mediumVerticalSpacing,
        padding:
            const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Shimmer.fromColors(
            baseColor: const Color.fromARGB(255, 235, 233, 233),
            highlightColor: MyAppColors.appBarBackgroundColor,
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                color: MyAppColors.appBarBackgroundColor,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          );
        },
      ),
    );
  }
}
