import 'package:flutter/material.dart';
import 'package:meridian_test/core/appcolors.dart';
import 'package:meridian_test/core/appconstants.dart';
import 'package:meridian_test/presentation/screens/detailspage/view/detailspage.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => Detailspage()));
      },
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
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
                    padding: EdgeInsets.only(right: 15.0),
                    child: Text(
                      'hdgfufguysdfguysfgusdgfbgftttftrrrnhsbdwhydfwfdjhgfvghytfcgfhdrd',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: MyAppColors.textColor,
                        fontSize: 16,
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  AppConstants.mediumVerticalSpacing,
                  Row(
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
