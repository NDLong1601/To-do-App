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
    return Scaffold();
  }
}

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('data'),
    );
  }
}
