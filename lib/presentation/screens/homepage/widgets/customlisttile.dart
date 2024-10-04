import 'package:flutter/material.dart';
import 'package:meridian_test/core/appcolors.dart';
import 'package:meridian_test/core/appconstants.dart';
import 'package:meridian_test/data/model/mediamodel.dart';
import 'package:meridian_test/presentation/screens/detailspage/view/detailspage.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.mediaList,
    required this.index,
  });

  final MediaList mediaList;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) => Detailspage(
                      mediaList: mediaList.media[index],
                    )));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              child: Image(
                image: AssetImage(AppConstants.usersProfileImage),
              ),
            ),
            AppConstants.mediumHorizontalSpacing,
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Text(
                      mediaList.media[index].body,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 65, 17, 17),
                        fontSize: 16,
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  AppConstants.mediumVerticalSpacing,
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.thumb_up_alt_outlined,
                            color: MyAppColors.likeIconColor,
                          ),
                          Text('2'),
                          AppConstants.largeHorizontalSpacing,
                          Icon(
                            Icons.comment_bank_outlined,
                            color: MyAppColors.commentIconColor,
                          )
                        ],
                      ),
                      Icon(
                        Icons.offline_share,
                        color: MyAppColors.shareIconColor,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
