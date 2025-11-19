import 'package:flutter/material.dart';
import 'package:todo/components/app_boxshadow.dart';
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

  final TextEditingController _taskController = TextEditingController();
  final Map<String, bool> _tasks = {
    'Cook Rice and Chicken at 10 a.m': false,
    'Learn Reactjs at 12 p.m': false,
    'Have Launch at 1 p.m': false,
    'Learn HTML and CSS at 3 p.m': false,
    'Have dinner at 7 p.m': false,
  };

  void addTask() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Thêm công việc mới'),
          content: TextField(
            controller: _taskController,
            decoration: const InputDecoration(
              hintText: 'Nhập tên công việc...',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                _taskController.clear();
                Navigator.pop(context);
              },
              child: const Text('Hủy'),
            ),
            ElevatedButton(
              onPressed: () {
                if (_taskController.text.isNotEmpty) {
                  setState(() {
                    _tasks[_taskController.text] = false;
                  });
                  _taskController.clear();
                  Navigator.pop(context);
                }
              },
              child: const Text('Thêm'),
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    _taskController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white100,
      body: SingleChildScrollView(
        child: Column(
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
            Container(
              margin: EdgeInsets.only(left: 10),
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(60),
                boxShadow: [
                  AppBoxShadow.custom(blurRadius: 4),
                ],
              ),
              child: AnimatedAnalogClock(
                location: 'Asia/Ho_Chi_Minh',
                size: 120,
                backgroundColor: AppColors.white100,
                hourHandColor: AppColors.blue1,
                minuteHandColor: AppColors.blue2,
                secondHandColor: AppColors.gray1,
                centerDotColor: Color(0xFFEEEEEE),
                hourDashColor: Colors.lightBlue,
                minuteDashColor: Colors.white,
                dialType: DialType.values[2],
                numberColor: AppColors.blue1,
              ),
            ),
            Container(
              margin:
                  EdgeInsets.only(left: 27, right: 251, top: 21, bottom: 20),
              child: AppText(
                  title: 'Tasks List', style: AppTextstyle.boldTsSize18Black),
            ),
            SizedBox(
              height: 248,
              width: 323,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    AppBoxShadow.custom(blurRadius: 15),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 21, top: 26),
                          child: AppText(
                              title: 'Tasks List',
                              style: AppTextstyle.regularTsSize14Black),
                        ),
                        Container(
                          margin:
                              EdgeInsets.only(left: 190, top: 22, bottom: 10),
                          child: GestureDetector(
                            onTap: addTask,
                            child: Image.asset(AppAssetsPath.icPlusCircle),
                          ),
                        ),
                      ],
                    ),
                    Flexible(
                      child: ListView.separated(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        shrinkWrap: true,
                        itemCount: _tasks.length,
                        itemBuilder: (context, index) {
                          final task = _tasks.keys.elementAt(index);
                          final isChecked = _tasks[task] ?? false;

                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 21),
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _tasks[task] = !isChecked;
                                    });
                                  },
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: isChecked
                                          ? Color(0xFF50C2C9)
                                          : Colors.white,
                                      borderRadius: BorderRadius.circular(4),
                                      border: Border.all(
                                        color: isChecked
                                            ? Color(0xFF50C2C9)
                                            : Color(0xFF2B8E94),
                                        width: 2,
                                      ),
                                    ),
                                    child: isChecked
                                        ? const Icon(
                                            Icons.check,
                                            size: 16,
                                            color: Colors.white,
                                          )
                                        : null,
                                  ),
                                ),
                                const SizedBox(width: 12),
                                Expanded(
                                  child: Text(
                                    task,
                                    style: AppTextstyle.regularTsSize12Black,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (context, index) =>
                            const SizedBox(height: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
