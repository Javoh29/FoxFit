import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fox_fit/config/constants/app_colors.dart';
import 'package:fox_fit/main_page/components/bottom_dropdown.dart';
import 'package:fox_fit/main_page/components/top_dropdown.dart';

import '../../config/constants/app_text_styles.dart';
import '../../config/constants/assets.dart';
import 'calendar.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.blackBg,
      padding: EdgeInsets.only(left: 15.w, top: 20.h, bottom: 20.5.h, right: 15.w),
      child: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                SvgPicture.asset(Assets.icons.arrowBack, width: 26.4.w, height: 13.4.h),
                SizedBox(width: 6.2.w),
                Text('Transaction History', style: AppTextStyles.body16w4),
              ],
            ),
            const TopDropdown(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                BottomDropdown(),
                Calendar(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
