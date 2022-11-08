import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fox_fit/config/constants/app_colors.dart';
import 'package:fox_fit/config/constants/local_data.dart';
import 'package:fox_fit/main_page/widgets/item_value.dart';
import 'package:fox_fit/main_page/widgets/time_component.dart';

import 'components/appbar.dart';
import 'components/bottom_dropdown.dart';
import 'components/calendar.dart';
import 'components/top_dropdown.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final jobRoleCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteGrey,
      body: Column(
        children: [
          const CustomAppBar(),
          Flexible(
            child: ListView.separated(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              itemCount: listItems.length,
              separatorBuilder: (context, index) {
                return ItemValues(model: listItems[index]);
              },
              itemBuilder: (context, index) {
                if (index == 0) {
                  return TimeComponent(time: '${weekDays[listItems[0].date.weekday]}');
                } else if (listItems[index - 1].date.toString() != listItems[index].date.toString()) {
                  return TimeComponent(time: '${weekDays[listItems[index].date.weekday]}');
                } else {
                  return const SizedBox.shrink();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
