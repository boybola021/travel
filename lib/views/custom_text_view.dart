

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../services/colors.dart';
import '../services/strings.dart';

class KTextMessageWidget extends StatelessWidget {
  const KTextMessageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   Text(
      KTStrings.message,
      style: TextStyle(
        fontSize: 23.sp,
        fontWeight: FontWeight.w600,
        color: KTColors.messageColor,
      ),
      textAlign: TextAlign.center,
    );
  }
}
