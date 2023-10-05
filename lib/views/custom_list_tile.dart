import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel/services/colors.dart';
import 'package:travel/services/images.dart';

import '../services/strings.dart';

class KTListTile extends StatelessWidget {
  final AssetImage img;
  final int i;
  final String title;

  const KTListTile(
      {super.key, required this.img, required this.i, required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Image(
            image: img,
          ),
          Container(
            height: 15.h,
            width: 15.w,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 2),
                color: i != 1 ? KTColors.yellow :
                KTColors.grey500,
            ),
          )
        ],
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.w500,
          color: KTColors.messageColor,
        ),
      ),
      subtitle: Text(
        i != 1 ? KTStrings.msg : KTStrings.typing,
        style: TextStyle(
          fontSize: 14.sp,
          color: i != 1 ? KTColors.grey400 : KTColors.orange,
        ),
      ),
      trailing: Image(
        image: i != 1 ? KTImages.checkOne : KTImages.checkTwo,
        height: 16,
        width: 16,
      ),
    );
  }
}
