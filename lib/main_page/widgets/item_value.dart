import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fox_fit/config/constants/local_data.dart';

import '../../config/constants/app_colors.dart';
import '../../config/constants/app_text_styles.dart';
import '../../config/constants/assets.dart';

class ItemValues extends StatelessWidget {
  ItemValues({
    required this.model,
    Key? key,
  }) : super(key: key);

  final ItemModel model;
  late final bool isSell = model.value < 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      margin: EdgeInsets.symmetric(vertical: 1.5.h),
      padding: EdgeInsets.only(
        top: 17.h,
        left: 17.w,
        bottom: 14.h,
        right: 18.5.w,
      ),
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset(
                  isSell ? Assets.icons.minus : Assets.icons.plus),
              SizedBox(width: 10.w),
              Text(
                isSell
                    ? 'Sell ${model.typeCrypto}'
                    : 'Buy ${model.typeCrypto}',
                style: AppTextStyles.body16w4
                    .copyWith(color: AppColors.blackBg),
              ),
              const Spacer(),
              Text(
                '${!isSell ? '+' : ''} ${model.value}  ${model.typeCrypto}',
                style: AppTextStyles.body15w4,
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 40.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    '${model.date.day}  / ${model.date.month} / ${model.date.year}',
                    style: AppTextStyles.body10w4),
                Text('${isSell ? '-' : '+'} \$ ${model.valueInDollor} USD',
                    style: AppTextStyles.body15w4),
              ],
            ),
          )
        ],
      ),
    );
  }
}
