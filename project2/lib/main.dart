import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Activity 2',
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Top row icons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back),
                    Icon(Icons.more_vert),
                  ],
                ),
                SizedBox(height: 16),

                // Profile section
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(
                        'assets/images/Ishank.jpg',
                      ),
                    ),
                    SizedBox(width: 16.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ishank Sharma',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '@Beginner',
                          style: TextStyle(color: Colors.grey.shade700),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 16),

                // Post text
                Text(
                  'Just finished a fantastic hike in the mountains! '
                      'The views were breathtaking, and the fresh air was so invigorating. '
                      'Feeling grateful for moments like these. #hiking #nature #mountains',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                SizedBox(height: 16),

                // Post image
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/images/mountains.jpg',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 200,
                  ),
                ),
                SizedBox(height: 16),

                // Interaction icons row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.favorite_border),
                        SizedBox(width: 8),
                        Text('23'),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.comment_rounded),
                        SizedBox(width: 8),
                        Text('5'),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.send),
                        SizedBox(width: 8),
                        Text('2'),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 16),

                // Likes and comments
                Text('23 likes', style: TextStyle(color: Colors.grey)),

                SizedBox(height: 16),
                Text(
                  'Jessica Williams: You should, Liam! It\'s definitely worth it.',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 16),

                // Add comment section
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage(
                        'assets/images/Ishank.jpg',
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 260,
                      height: 50,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Add a comment...',
                          style: TextStyle(
                            color: Colors.grey.shade700,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
