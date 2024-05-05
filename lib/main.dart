import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  int currentIndex = 0;
  @override
  State<MyApp> createState() => _MyAppState();// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('6-amaliy ish'),
          backgroundColor: Colors.green,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(
                  "assets/images/1.jpg"),
              radius: 65,
            ),
            SizedBox(height: 12),
            TextField(
              controller: controller,
              decoration: InputDecoration(border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 3,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(0),
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 3,
                  ),
                ),
              ),
            ),
            SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  String text = controller.text;
                  controller2.text = text;
                });
              },
              child: Text("Yuborish"),
            ),
            SizedBox(height: 12),
            TextField(

              controller: controller2,
              decoration: InputDecoration(border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Theme(
          data: ThemeData(
            canvasColor: Colors.black12,
          ),
        child: BottomNavigationBar(
          backgroundColor: Color(0xFF1F1F1F),
          fixedColor: Colors.red,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 24,
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index; // Bosilgan tugma indeksini o'zgartirish
            });
          },
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Color(0xFF9DB2CE),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: "Biznes",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.schedule),
              label: "Jadval",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.wallet),
              label: "Hamyon",
            ),
          ],
        ),
        ),
      ),
    );
  }
}