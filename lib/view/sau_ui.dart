import 'package:flutter/material.dart';
import 'package:flutter_app_final_6319c10028/view/art_sci_ui.dart';
import 'package:flutter_app_final_6319c10028/view/bs_ui.dart';
import 'package:flutter_app_final_6319c10028/view/en_ui.dart';
import 'package:flutter_app_final_6319c10028/view/la_ui.dart';

void main() => runApp(const SauUI());

class SauUI extends StatelessWidget {
  const SauUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 14, 0, 66),
        title: Text(
          'SAU',
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 5.0,
              ),
              Text(
                'WELECOME',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 21.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            SizedBox(
              height: 12.0,
            ),
              Text(
                'TO',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            SizedBox(
              height: 12.0,
            ),
              Text(
                'SOUTH-EAST ASIA UNIVERSITY',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 21.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            SizedBox(
              height: 15.0,
            ),
            Image.asset(
                'assets/images/saubanner1.JPG',
                height: 190.0,
              ),
            SizedBox(
              height: 30.0,
            ),
              Text(
                'ทางเลือกใหม่ของโลกดิจิตอล',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 21.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            SizedBox(
              height: 20.0,
            ),
              Text(
                'เริ่มต้นที่นี่',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 21.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
              height: 20.0,
            ),
            Image.asset(
                'assets/images/saubanner2.JPG',
                height: 100.0,
                width: 400.0,
              ),
              SizedBox(
              height: 70.0,
            ),
            SizedBox(
              height: 40.0,
            ),
            ]
          ),
        ),
      ),
      
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader( 
              decoration: BoxDecoration(
                color: Colors.white
              ),
              child: Column(
                children: [
              Image.asset(
                'assets/images/saulogo.jpg',
                height: 135.0,
                width: 135.0,
              ),
              ]
              ), 
            ),
            ListTile(
              title: const Text('SAU'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SauUI(),
                    ),
                  );
              },
            ),
            ListTile(
              title: const Text('คณะวิศวกรรมศาสตร์'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EnUI(),
                    ),
                  );
              },
            ),
            ListTile(
              title: const Text('คณะศิลปศาสตร์และวิทยาศาสตร์'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ArtUI(),
                    ),
                  );
              },
            ),
            ListTile(
              title: const Text('คณะบริหารธุรกิจ'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BsUI(),
                    ),
                  );
              },
            ),
            ListTile(
              title: const Text('คณะนิติศาสตร์'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LaUI(),
                    ),
                  );
              },
            ),
          ],
        ),
      ),
    );
  }
}