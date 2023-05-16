import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget listItem(IconData ic, String text){
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: 8, horizontal: 16
      ),
      child: Container(
        height: 35,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          border: Border.all(width: 0.5),
        ),
        child: Row(
          children: [
            const SizedBox(width: 10),
            Icon(
              ic,
              size: 20,
            ),
            const SizedBox(width: 10),
            Text(
              text,
              style: const TextStyle(
                fontSize: 15,
                fontFamily: 'Pacifico-Regular'
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(children: [
          Expanded(
            child: Stack(
              children: [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: 25,
                        height: 25,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),

                      )
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                        'My Profile',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue,
                          fontFamily: 'Pacifico-Regular'
                        )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: const CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage("assets/profile.jpg"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Center(
              child: Column(
                  children:[
                    const SizedBox(height: 30),
                    listItem(Icons.person_rounded, 'Username'),
                    // const SizedBox(height: 6),
                    listItem(Icons.date_range_outlined, 'Date of Birth'),
                    // const SizedBox(height: 6),
                    listItem(Icons.email_rounded, 'Email or Phone number'),
                    // const SizedBox(height: 6),
                    listItem(Icons.key, 'Password'),
                  ]
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
