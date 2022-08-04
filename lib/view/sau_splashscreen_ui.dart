import 'package:flutter/material.dart';
import 'package:flutter_app_final_6319c10028/view/sau_ui.dart';

class SauSplashScreenUI extends StatefulWidget {
  const SauSplashScreenUI({Key? key}) : super(key: key);

  @override
  State<SauSplashScreenUI> createState() => _SauSplashScreenUIState();
}

class _SauSplashScreenUIState extends State<SauSplashScreenUI> {
  @override
  void initState() {
    //โค้ด SplashScreen
    Future.delayed(
      Duration(
        seconds: 3,
      ),
      ()=>Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => SauUI(),
        ),
      ),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Image.asset(
                'assets/images/saulogo.jpg',
                height: 160.0,
              ),
            SizedBox(
              height: 50.0,
            ),
            CircularProgressIndicator(
              color: Color.fromARGB(255, 20, 0, 73),
              strokeWidth: 8.0,
            ),
          ],
        ),
      ),
    );
  }
}
