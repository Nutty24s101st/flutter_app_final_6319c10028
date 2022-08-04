import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BsUI extends StatefulWidget {
  const BsUI({Key? key}) : super(key: key);

  @override
  State<BsUI> createState() => _BsUIState();
}

class _BsUIState extends State<BsUI> {
Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl (launchUri);
  }

Future<void> _launchInBrowser(Uri url) async {
    if (! await launchUrl (
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }

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
                height: 30.0,
              ),
              Text(
                'FACULTY OF BUSINESS ADMINISTERATION',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
            SizedBox(
              height: 10.0,
            ),
            Image.asset(
                'assets/images/bs.jpg',
                height: 265.0,
              ),
            SizedBox(
              height: 15.0,
            ),
              Text(
                'สาขาวิชาการบัญชี',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 21.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            SizedBox(
              height: 10.0,
            ),
              Text(
                'สาขาวิชาการบริหารทรัพยากรมนุษย์',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 21.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            SizedBox(
              height: 10.0,
            ),
            Text(
                'สาขาวิชาการตลาดยุคดิจิตอล',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 21.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            SizedBox(
              height: 10.0,
            ),
            Text(
                'สาขาวิชาระบบสารสนเทศเพื่อธุรกิจดิจิตอล',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 21.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            SizedBox(
              height: 10.0,
            ),
            Text(
                'สาขาวิชาการจัดการ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 21.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            SizedBox(
              height: 10.0,
            ),
            Text(
                'สาขาวิชาการจัดการนวัตกรรมการค้า',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 21.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            SizedBox(
              height: 50.0,
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    icon: Icon(
                      FontAwesomeIcons.phone,
                      color: Color.fromARGB(255, 211, 120, 0),
                      size: 60.0,
                    ),
                    onPressed: () {
                      _makePhoneCall('028064500');
                    }),
                SizedBox(
                  width: 90.0,
                ),
                IconButton(
                  icon: Icon(
                    FontAwesomeIcons.globe,
                    color: Color.fromARGB(255, 0, 54, 146),
                    size: 60.0,
                  ),
                  onPressed: () {
                    _launchInBrowser(Uri.parse('http://www.sau.ac.th'));
                  },
                ),
              ],
            ),
            SizedBox(
              height: 150.0,
            ),
            ],
          )
          ),
        ),
      );
  }
}