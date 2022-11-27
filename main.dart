import 'package:flutter/material.dart';
import 'package:flutter_application_3/book1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFFDFDFD),
        appBar: AppBar(
          titleSpacing: 0.0,
          toolbarHeight: 103.0,
          backgroundColor: const Color(0xFFFDFDFD),
          elevation: 0.0,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
              color: const Color(0xFF000000),
            ),
          ],
          title: Row(
            children: [
              const Padding(padding: EdgeInsets.fromLTRB(28, 43, 0, 0)),
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                child: Image.asset(
                  "assets/images/me.jpg",
                  height: 40,
                  width: 40,
                ),
              ),
              const Padding(padding: EdgeInsets.fromLTRB(12, 0, 0, 0)),
              const Text(
                "Hi, Ameen!",
                style: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        body: Container(
          padding: const EdgeInsets.only(left: 30.0),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(padding: EdgeInsets.only(left: 10)),
                Text(
                  "Book List",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 39),
                bookpage(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
