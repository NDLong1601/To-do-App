import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF6F6F6),
        body: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Image(image: AssetImage('assets/images/img_shape.png')),
            ),
            SizedBox(height: 59),
            Image(
              image: AssetImage('assets/images/img_undraw_mobile.png'),
              width: 290,
              height: 270,
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 48, right: 46),
              child: Text(
                'Gets things done with TODO',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF000000).withValues(alpha: 0.75)),
              ),
            ),
            SizedBox(height: 36),
            Padding(
              padding: EdgeInsets.only(left: 48, right: 46),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF000000).withValues(alpha: 0.74),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 92, left: 26, right: 24),
              width: 325,
              height: 62,
              decoration: BoxDecoration(
                color: Color(0xFF50C2C9),
                // borderRadius: BorderRadius.circular(10),
              ),
              // child: Center(
              //   child: Text(
              //     'Get Started',
              //     style: TextStyle(
              //       fontFamily: 'Poppins',
              //       fontSize: 16,
              //       fontWeight: FontWeight.w600,
              //       color: Color(0xFFFFFFFF),
              //     ),
              //   ),
              // ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute<void>(
                        builder: (context) => RegistrationScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF50C2C9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minimumSize: Size(325, 62),
                ),
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF6F6F6),
        body: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Image.asset('assets/images/img_shape.png'),
            ),
            SizedBox(height: 76),
            Text(
              'Welcome Onboard!',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xFF000000).withValues(alpha: 0.75),
              ),
            ),
            SizedBox(height: 14),
            Padding(
              padding: EdgeInsets.only(left: 69, right: 65),
              child: Text(
                'Let’s help you meet up your tasks',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF000000).withValues(alpha: 0.74),
                ),
              ),
            ),
            SizedBox(height: 49),
            Padding(
              padding: const EdgeInsets.only(left: 27, right: 23),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your full name',
                  filled: true,
                  fillColor: Color(0xFFFFFFFF),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 24, vertical: 18),
                ),
              ),
            ),
            SizedBox(height: 21),
            Padding(
              padding: const EdgeInsets.only(left: 27, right: 23),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your email',
                  filled: true,
                  fillColor: Color(0xFFFFFFFF),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 24, vertical: 18),
                ),
              ),
            ),
            SizedBox(height: 21),
            Padding(
              padding: const EdgeInsets.only(left: 27, right: 23),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  filled: true,
                  fillColor: Color(0xFFFFFFFF),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 24, vertical: 18),
                ),
              ),
            ),
            SizedBox(height: 21),
            Padding(
              padding: const EdgeInsets.only(left: 27, right: 23),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
                  filled: true,
                  fillColor: Color(0xFFFFFFFF),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 24, vertical: 18),
                ),
              ),
            ),
            SizedBox(height: 50),
            Container(
              width: 325,
              height: 62,
              decoration: BoxDecoration(
                color: Color(0xFF50C2C9),
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute<void>(
                        builder: (context) => DashboardScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF50C2C9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minimumSize: Size(325, 62),
                ),
                child: Text(
                  'Register',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
            ),
            SizedBox(height: 23),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an account ?',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    )),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute<void>(
                          builder: (context) => SignInScreen()),
                    );
                  },
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF50C2C9),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF6F6F6),
        body: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Image.asset('assets/images/img_shape.png'),
            ),
            SizedBox(height: 35),
            Text(
              'Welcome Back!',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xFF000000).withValues(alpha: 0.75),
              ),
            ),
            SizedBox(height: 35),
            Image(
              image: AssetImage('assets/images/img_Slice2.png'),
              width: 171,
              height: 170,
            ),
            SizedBox(height: 46),
            Padding(
              padding: const EdgeInsets.only(left: 27, right: 23),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your email',
                  filled: true,
                  fillColor: Color(0xFFFFFFFF),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 24, vertical: 18),
                ),
              ),
            ),
            SizedBox(height: 21),
            Padding(
              padding: const EdgeInsets.only(left: 27, right: 23),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  filled: true,
                  fillColor: Color(0xFFFFFFFF),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 24, vertical: 18),
                ),
              ),
            ),
            SizedBox(height: 25),
            Text('Forgot Password ?',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF50C2C9),
                )),
            SizedBox(height: 24),
            Container(
              width: 325,
              height: 62,
              decoration: BoxDecoration(
                color: Color(0xFF50C2C9),
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute<void>(
                        builder: (context) => DashboardScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF50C2C9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minimumSize: Size(325, 62),
                ),
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Dont have an account ?',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    )),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute<void>(
                          builder: (context) => RegistrationScreen()),
                    );
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF50C2C9),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

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
        backgroundColor: Color(0xFFF6F6F6),
        body: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    'assets/images/img_Rectangle24.png',
                    // height: 307,
                    // width: 375,
                    fit: BoxFit.cover,
                  ),
                ),
                Image.asset('assets/images/img_shape.png'),
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
                        'assets/images/img_Avatar.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 251,
                  left: (MediaQuery.of(context).size.width / 2) - 90,
                  child: Text('Welcome, Olivs Grace!',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFFFFFF),
                      )),
                ),
              ],
            ),
            SizedBox(height: 25),
            Container(
              margin: EdgeInsets.only(left: 244, right: 24),
              child: Text('Good Afternoon',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF000000).withValues(alpha: 0.75),
                  )),
            ),
            // Clock Image
            Container(
              margin: EdgeInsets.all(0),
              height: 120,
              width: 120,
              child: Image.asset('assets/images/img_clock.png'),
            ),

            SizedBox(height: 21),
            Container(
              margin: EdgeInsets.only(left: 27, right: 251),
              child: Text('Tasks List',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF000000).withValues(alpha: 0.75),
                  )),
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
                                  color:
                                      Color(0xFF000000).withValues(alpha: 0.75),
                                )),
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 190, top: 22),
                              child: Image.asset(
                                  'assets/icons/ic_plus_circle.png')),
                        ],
                      ),
                      SizedBox(height: 10),
                      Expanded(
                        child: ListView.separated(
                          // scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          itemCount: tasks.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 2.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(width: 8),
                                  Checkbox(
                                    value: false,
                                    onChanged: (bool? value) {},
                                    visualDensity: VisualDensity.compact,
                                  ),
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
                              ),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return SizedBox(height: 0);
                          },
                        ),
                      ),
                    ],
                  )),
            )
          ],
        ));
  }
}
