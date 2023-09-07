import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


// link to my github profile
final Uri _url = Uri.parse('https://github.com/dettyboy2022');


// function to launch the github profile
Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              'https://th.bing.com/th/id/OIP.KeIijA181Ged9wRqNlkO_QHaHN?w=188&h=184&c=7&r=0&o=5&dpr=1.1&pid=1.7',
              width: double.infinity,
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Slack Name: Charles Ayomide',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Welcome to my HNGinternship, this is my first task. Checkout my GitHub to access the code base.',
              style: TextStyle(fontSize: 18),
            ),
            const Spacer(),
            Center(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                  onPressed: _launchUrl,
                  child: const Text('Open GitHub')),
            )
          ],
        ),
      ),
    );
  }
}
