import 'package:flutter/material.dart';

void main() {
  runApp(BusinessCardApp());
}

class BusinessCardApp extends StatelessWidget {
  const BusinessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Color.fromARGB(255, 255, 237, 219),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 112,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 108,
                    backgroundImage: AssetImage("lib/menna.jpg"),
                  ),
                ),
                Text(
                  "Menna Gamal",
                  style: TextStyle(
                    fontSize: 35,
                    fontFamily: 'Pacifico',
                    color: Color.fromARGB(255, 122, 85, 59),
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  'FLUTTER DEVELOPER',
                  style: TextStyle(
                    color: Color.fromARGB(255, 125, 94, 16),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              Divider(color: Color.fromARGB(255, 125, 94, 16),
              thickness: 1,
              indent: 60,
              endIndent: 60,
              height: 10,

              ),
              
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 8),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    height: 65,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:16 ),
                          child: Icon(
                            Icons.phone,
                            size: 32,
                            color: Color.fromARGB(255, 120, 82, 55),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:32),
                          child: Text(
                            '(+20) 1080730181',
                            style: TextStyle(
                              fontSize: 24,
                              color: Color.fromARGB(255, 104, 73, 51),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 8),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    height: 65,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:16 ),
                          child: Icon(
                            Icons.email,
                            size: 32,
                            color: Color.fromARGB(255, 120, 82, 55),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:32.0),
                          child: Text(
                            'menagamal@gmail.com',
                            style: TextStyle(
                              fontSize: 24,
                              color: Color.fromARGB(255, 104, 73, 51),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )));
  }
}
