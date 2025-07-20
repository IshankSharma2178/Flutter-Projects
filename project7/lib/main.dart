import 'package:flutter/material.dart';
import 'package:student_portal/routes/app_routes.dart';
import 'package:student_portal/screens/course_detail_screen.dart';
import 'package:student_portal/screens/course_list_screen.dart';
import 'package:student_portal/screens/dashboard_screen.dart';
import 'package:student_portal/screens/login_screen.dart';
import 'package:student_portal/screens/profile_screen.dart';
import 'package:student_portal/screens/signup_screen.dart';

import 'models/course_model.dart';

void main(){
  runApp(StudentPortalApp());
}
class StudentPortalApp extends StatelessWidget {
  const StudentPortalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title:'Student Portal',
        debugShowCheckedModeBanner: false,
        initialRoute: AppRoutes.login,// AppRoutes.login mean this->'/'
        onGenerateRoute: (settings){
          switch(settings.name){
            case AppRoutes.login:
              return MaterialPageRoute(
                builder:(_)=> LoginScreen(),
              );
            case AppRoutes.dashboard:
              return MaterialPageRoute(
                builder:(_)=> DashboardScreen(),
              );
            case AppRoutes.signup:
              return MaterialPageRoute(
                builder: (_)=> SignupScreen(),
              );
            case AppRoutes.profile:// '/profile'==/profile
              return MaterialPageRoute(
                builder: (_)=>ProfileScreen(),
              );
            case AppRoutes.courses:
              return MaterialPageRoute(
                builder: (_)=> CourseListScreen(),
              );
          case AppRoutes.courseDetail:
            final course = settings.arguments as Course;
            return MaterialPageRoute(
              builder: (_)=>CourseDetailScreen(course: course),
            );
            default:
              return MaterialPageRoute(
                  builder:(context)=> Scaffold(
                    appBar: AppBar(
                      title: Text('Page Not found'),
                      backgroundColor: Colors.brown,
                      centerTitle: true,
                      leading: IconButton(onPressed: () => Navigator.pushNamed(context, AppRoutes.login), icon: Icon(Icons.arrow_back)),
                    ),
                    body: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xFFBCAAA4), Color(0xFF8D6E63)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Center(child: Text('404-page not found', style: TextStyle(fontSize: 35,color: Colors.white),)),
                    ),
                  )
              );

          }
        }
    );
  }
}