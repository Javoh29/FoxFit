import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../config/constants/app_colors.dart';
import '../../config/constants/app_text_styles.dart';

class TimeComponent extends StatelessWidget {
  const TimeComponent({Key? key, required this.time}) : super(key: key);

  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      // height: 47.w,
      color: AppColors.whiteGrey,
      padding: EdgeInsets.symmetric(vertical: 13.5.h, horizontal: 15.w),
      alignment: Alignment.centerLeft,
      child: Text(time, style: AppTextStyles.body15w4),
    );
  }
}
