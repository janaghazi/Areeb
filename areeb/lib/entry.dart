// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';



// class MyApp extends StatelessWidget {
//    const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false, // Remove the debug banner
//       home: SplashScreen(),
//     );
//   }
// }

class Entry extends StatefulWidget {
  const Entry({super.key});

  @override
  State<Entry> createState() => _EntryState();
}

class _EntryState extends State<Entry> {
  
  @override
  void initState() {
    super.initState();
    
    // Delay for 1 second and navigate to the login page
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.pushReplacementNamed(context, '/login');  // Replace the current route with the login route
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFFBF6F2), 
      body: Center(

        child: Image(
          image: AssetImage("assets/areeb.png")
          ),
        

              // CircleAvatar(
              //     radius: 24,
              //     backgroundColor: Color.fromARGB(255, 67, 67, 67),
              //     child: Icon(Icons.person, color: Colors.white),
              //   ),
                
                
              //   SizedBox(width: 10),
              //   Text(
              //     "@renadd098",
              //     style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              //   ),
              
            
            // Image.asset(
            //       "assets/AreebLogo.jpg",
            //       fit: BoxFit.contain,
            //       height: 50,
            //     ),
          
        ),
      );
    
  }
}
