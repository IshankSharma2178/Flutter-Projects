import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100, left: 20),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("assets/images/Ishank.jpg"),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Ishank Sharma", style: TextStyle(fontSize: 30)),
                    Text("Designation", style: TextStyle(fontSize: 15)),
                  ],
                ),
              ],
            ),
            SizedBox(height: 45),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.school, size: 40),
                      SizedBox(width: 25),
                      Text("B.tech in CSE", style: TextStyle(fontSize: 20)),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.computer_rounded, size: 40),
                      SizedBox(width: 25),
                      Text("Portfolio App", style: TextStyle(fontSize: 20)),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.location_pin, size: 40),
                      SizedBox(width: 25),
                      Text("Location", style: TextStyle(fontSize: 20)),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.email, size: 40),
                      SizedBox(width: 25),
                      Text("Email Address", style: TextStyle(fontSize: 20)),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.phone, size: 40),
                      SizedBox(width: 25),
                      Text("Contact", style: TextStyle(fontSize: 20)),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                "About Me: Flutter is an open-source framework by Google for building mobile apps using a single codebase.It allows developers to create high-performance, visually attractive apps for both Android and iOS, with fast development, customizable widgets, and native-like user experience.",
                style: TextStyle(fontSize: 15),
              ),
            ),
            SizedBox(height: 40),
            Text("Created by Ishank Sharma"),
          ],
        ),
      ),
    );
  }
}