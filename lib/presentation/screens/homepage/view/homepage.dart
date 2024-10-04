import 'package:flutter/material.dart';
import 'package:meridian_test/core/appcolors.dart';
import 'package:meridian_test/core/appconstants.dart';
import 'package:meridian_test/presentation/screens/homepage/widgets/customlisttile.dart';
import 'package:meridian_test/presentation/screens/homepage/widgets/filterwidget.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: CircleAvatar(
            backgroundColor: MyAppColors.appBarBackgroundColor,
            radius: 10,
            child: Image(
              image: AssetImage(AppConstants.profileImage),
              fit: BoxFit.cover,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none_rounded,
              color: Color.fromARGB(255, 87, 44, 14),
            ),
            iconSize: 28,
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 6),
            child: Text(
              'Social Media Posts',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
          ),
          AppConstants.mediumVerticalSpacing,
          const FilterWidget(),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => const Divider(),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return const CustomListTile();
              },
            ),
          ),
        ],
      ),
    );
  }
}
