import 'package:flutter/material.dart';
import 'package:meridian_test/core/appcolors.dart';
import 'package:meridian_test/core/appconstants.dart';

class FilterWidget extends StatefulWidget {
  const FilterWidget({super.key});

  @override
  State<FilterWidget> createState() => _FilterWidgetState();
}

class _FilterWidgetState extends State<FilterWidget> {
  String selectedFilter = 'Trending';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 15),
        scrollDirection: Axis.horizontal,
        itemCount: AppConstants.filterOptions.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedFilter = AppConstants.filterOptions[index];
              });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  10,
                ),
                color: selectedFilter == AppConstants.filterOptions[index]
                    ? MyAppColors.primaryColor
                    : const Color.fromARGB(255, 240, 240, 240),
              ),
              child: Center(
                child: Text(
                  AppConstants.filterOptions[index],
                  style: selectedFilter == AppConstants.filterOptions[index]
                      ? const TextStyle(
                          color: MyAppColors.appBarBackgroundColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        )
                      : const TextStyle(
                          color: MyAppColors.subtitleTextColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
