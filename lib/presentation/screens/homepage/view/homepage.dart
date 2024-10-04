import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meridian_test/core/appcolors.dart';
import 'package:meridian_test/core/appconstants.dart';
import 'package:meridian_test/data/model/mediamodel.dart';
import 'package:meridian_test/presentation/bloc/bloc/social_bloc.dart';
import 'package:meridian_test/presentation/screens/homepage/widgets/customlisttile.dart';
import 'package:meridian_test/presentation/screens/homepage/widgets/filterwidget.dart';
import 'package:meridian_test/presentation/screens/homepage/widgets/loadertile.dart';
import 'package:shimmer/shimmer.dart';

class HomePageWrapper extends StatelessWidget {
  const HomePageWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SocialBloc(),
      child: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<SocialBloc>(context).add(FetchDataEvent());
  }

  MediaList? mediaList;

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
          BlocBuilder<SocialBloc, SocialState>(
            builder: (context, state) {
              if (state is FetchedState) {
                mediaList = state.mediaModel;
                return Expanded(
                  child: ListView.separated(
                    separatorBuilder: (context, index) => const Divider(),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 20),
                    itemCount: mediaList!.media.length,
                    itemBuilder: (BuildContext context, int index) {
                      return CustomListTile(
                        index: index,
                        mediaList: mediaList!,
                      );
                    },
                  ),
                );
              }
              return const LoaderTile();
            },
          ),
        ],
      ),
    );
  }
}
