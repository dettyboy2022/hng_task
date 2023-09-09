import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hng_task/web.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HNG PROFILE'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('assets/profilepic.jpg'),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            const Center(child: Text('Mobile Developer')),
            SizedBox(
              height: 10.h,
            ),
            const Text(
              'Full Name: Charles Ayomide',
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: 5.h,
            ),
            const Text(
              'Slack Name: BoB',
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: 5.h,
            ),
            const Text(
              'Email Address: Charlesayomide@hotmail.com',
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: 15.h,
            ),
            const Text(
              'Welcome to HNG internship, this is my first task. Checkout my GitHub to access the code base.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 15.h,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const WebView()));
                },
                child: const Text(
                  'Open GitHub',
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
