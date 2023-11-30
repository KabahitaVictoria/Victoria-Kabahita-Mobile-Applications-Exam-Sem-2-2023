import 'package:flutter/material.dart';
import 'package:student_app/home.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("About Page"),
        actions: [
          ElevatedButton(
              // navigate to HomePage
              onPressed: () => {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const HomePage()))
                  },
              child: const Text("Student App"))
        ],
      ),
      body:
          const Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text("Name: Victoria Kabahita"),
        Text("Student Number: 222025"),
        Text("Email Address: torimalvie@gmail.com")
      ]),
    );
  }
}
