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
      ),
      home: DemoWidget(),
    );
  }
}

class DemoWidget extends StatelessWidget {
  const DemoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.back_hand, color: Colors.blue),
        title: Text(
          'Demo Widget',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: Color(0xFF000000).withValues(alpha: 0.74),
          ),
        ),
        backgroundColor: Colors.amberAccent,
        actions: [Icon(Icons.search), Icon(Icons.search)],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, top: 50, right: 20, bottom: 30),
            child: Text(
              'Hello, Flutter!',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color(0xFF000000).withValues(alpha: 0.87),
              ),
            ),
          ),
          Text(
            'Hello, Flutter! adasl hagdslhasdhgashadshasdh asdhasd asdgh sad gh',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color(0xFF000000).withValues(alpha: 0.87),
            ),
          ),
          // Image.asset('assets/images/img_shape.png'),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DemoWdiget2()),
              );
            },
            child: Image.asset('assets/icons/ic_plus_circle.png'),
          ),
          TextField(
            decoration: InputDecoration(hintText: 'Enter your full name'),
          ),
          // SizedBox(
          //   height: 300,
          //   child: ListView.separated(
          //     separatorBuilder: (context, index) => SizedBox(height: 20),
          //     itemBuilder: (context, index) {
          //       return Container(
          //         width: 100,
          //         height: 100,
          //         color: index % 2 == 0 ? Colors.red : Colors.green,
          //       );
          //     },
          //     itemCount: 10,
          //   ),
          // child: ListView(
          //   shrinkWrap: true,
          //   children: [
          //     Image.asset('assets/images/img_shape.png'),
          //     Container(width: 100, height: 100, color: Colors.red),
          //     Container(width: 100, height: 100, color: Colors.green),
          //     InkWell(
          //       onTap: () {
          //         print('Icon tapped!');
          //       },
          //       child: Image.asset('assets/icons/ic_plus_circle.png'),
          //     ),
          //     Container(width: 100, height: 100, color: Colors.yellow),
          //     Container(width: 100, height: 100, color: Colors.black),
          //   ],
          // ),
          // ),

          // Stack(
          //   children: [
          //     Container(width: 200, height: 200, color: Colors.blue),
          //     Positioned(
          //       top: 50,
          //       left: 50,
          //       child: Container(width: 100, height: 100, color: Colors.red),
          //     ),
          //     Positioned(
          //       top: 20,
          //       left: 30,
          //       child: Container(width: 50, height: 50, color: Colors.green),
          //     ),
          //   ],
          // ),

          // Container(
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(16),
          //     color: Colors.amber,
          //     border: Border.all(color: Colors.blue, width: 2),
          //     boxShadow: [
          //       BoxShadow(
          //         blurRadius: 15,
          //         spreadRadius: 0,
          //         color: Colors.black.withValues(alpha: 0.25),
          //         offset: Offset(0, 4),
          //       ),
          //     ],
          //   ),
          //   width: 300,
          //   height: 200,
          //   margin: EdgeInsets.only(top: 50),
          //   padding: EdgeInsets.only(left: 50, top: 20),
          //   child: Text("This is a container with padding and margin"),
          // ),
        ],
      ),
    );
  }
}

class DemoWdiget2 extends StatefulWidget {
  const DemoWdiget2({super.key});

  @override
  State<DemoWdiget2> createState() => _DemoWdiget2State();
}

class _DemoWdiget2State extends State<DemoWdiget2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Demo Widget 2')),
      body: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(child: Text('This ')),
      ),
    );
  }
}
