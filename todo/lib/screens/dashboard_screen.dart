import 'package:flutter/material.dart';
import 'package:todo/components/app_text.dart';
import 'package:todo/components/app_textstyle.dart';
import 'package:todo/const/app_assets_path.dart';
import 'package:todo/const/app_color.dart';
import 'package:animated_analog_clock/animated_analog_clock.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  bool isChecked = false;
  String getGreeting() {
    final hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Good Morning';
    } else if (hour < 17) {
      return 'Good Afternoon';
    } else {
      return 'Good Evening';
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<String> tasks = [
      'Cook Rice and Chicken at 10 a.m',
      'Learn Reactjs at 12 p.m',
      'Have Launch at 1 p.m',
      'Learn HTML and CSS at 3 p.m',
      'Have dinner at 7 p.m',
    ];
    return Scaffold(
      backgroundColor: AppColors.white100,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 307,
                color: AppColors.lightBlue,
              ),
              Image.asset(AppAssetsPath.imgShape),
              Positioned(
                top: 133,
                left: (MediaQuery.of(context).size.width / 2) - 50,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Color(0xFF2B8E94),
                      width: 3,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      AppAssetsPath.imgAvatar,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 251,
                left: (MediaQuery.of(context).size.width / 2) - 90,
                child: AppText(
                    title: 'Welcome, Oliva Grace',
                    style: AppTextstyle.boldTsSize18White),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 244, right: 24, top: 25),
            child: AppText(
                title: getGreeting(), style: AppTextstyle.boldTsSize12Black),
          ),
          // Container(
          //   margin: EdgeInsets.only(left: 27, right: 251, top: 12),
          //   height: 120,
          //   width: 120,
          //   decoration: BoxDecoration(
          //     color: Colors.white,
          //     shape: BoxShape.circle,
          //     boxShadow: [
          //       BoxShadow(
          //         color: Colors.grey.withValues(alpha: 0.4),
          //         spreadRadius: 4,
          //         blurRadius: 8,
          //         offset: const Offset(3, 3),
          //       ),
          //     ],
          //     border: Border.all(
          //       color: Colors.lightBlueAccent,
          //       width: 3,
          //     ),
          //   ),
          //   child: AnimatedAnalogClock(
          //     location: 'Vietnam/Hanoi',
          //     size: 120,
          //     backgroundColor: AppColors.white100,
          //     hourHandColor: AppColors.blue1,
          //     minuteHandColor: Color(0xFF70A4A7),
          //     secondHandColor: Color(0xFFC1C0C0),
          //     centerDotColor: AppColors.white100,
          //     hourDashColor: Color(0xFFFFFFFF),
          //     dialType: DialType.numbers,
          //     numberColor: AppColors.blue1,
          //     extendHourHand: true,
          //     extendMinuteHand: true,
          //   ),
          // ),
          Container(
            margin: EdgeInsets.only(left: 27, right: 251, top: 21),
            child: AppText(
                title: 'Tasks List', style: AppTextstyle.boldTsSize18Black),
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 248,
            width: 323,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF000000).withValues(alpha: 0.25),
                    spreadRadius: 0,
                    blurRadius: 15,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 21, top: 26),
                        child: Text('Tasks List',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF000000).withValues(alpha: 0.75),
                            )),
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 190, top: 22),
                          child: Image.asset(AppAssetsPath.icPlusCircle)),
                    ],
                  ),
                  SizedBox(height: 10),
                  Expanded(
                    child: ListView.separated(
                      shrinkWrap: true,
                      itemCount: tasks.length,
                      itemBuilder: (context, index) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(width: 8),
                            Container(
                              width: 17,
                              height: 17,
                              decoration: BoxDecoration(
                                color: Color(0xFFFFFFFF),
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(
                                  color: Color(0xFF2B8E94),
                                  width: 2,
                                ),
                              ),
                            ),
                            SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                tasks[index],
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 18);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
