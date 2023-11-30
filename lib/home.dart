import 'package:flutter/material.dart';
import 'about.dart';
import 'student.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // text variable to store text that is to be toggled
  String _text = "Student details";

  // function to toggle text
  void _toggleText() {
    setState(() {
      // if-else statement
      if (_text == "Student details") {
        Student student = Student("John Doe", 20, "A");
        _text = student.printStudentDetails();
      } else {
        _text = "Student details";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home Page"),
          actions: [
            ElevatedButton(
                // navigate to AboutScreen()
                onPressed: () => {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const AboutScreen()))
                    },
                child: const Text("About Page"))
          ],
          backgroundColor: Colors.blue,
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(200, 200, 200, 20),
            child: ElevatedButton(
              onPressed: _toggleText,
              style: const ButtonStyle(
                alignment: Alignment.center,
              ),
              child: const Text(
                "Show Details",
                style: TextStyle(color: Colors.black87),
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Text(
                // call the _text variable here
                _text),
          ),
        ]));
  }
}
