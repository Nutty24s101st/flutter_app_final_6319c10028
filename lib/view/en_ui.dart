import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class EnUI extends StatefulWidget {
  const EnUI({Key? key}) : super(key: key);

  @override
  State<EnUI> createState() => _EnUIState();
}

class _EnUIState extends State<EnUI> {
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
                height: 5.0,
              ),
              Text(
                'FACULTY OF ENGINEERING',
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
                'assets/images/en.jpg',
                height: 265.0,
              ),
            SizedBox(
              height: 15.0,
            ),
              Text(
                'สาขาวิชาวิศวกรรมสิ่งแวดล้อม',
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
                'สาขาวิชาวิศวกรรมความปลอดภัย',
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
                'สาขาวิชาวิศวกรรมคอมพิวเตอร์',
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
                'สาขาวิชาวิศวกรรมโยธา',
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
                'สาขาวิชาวิศวกรรมไฟฟ้า',
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
                'สาขาวิชาวิศวกรรมอุตสาหกรรม',
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
                'สาขาวิชาวิศวกรรมเครื่องกล',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 21.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
             SizedBox(
              height: 30.0,
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
              height: 70.0,
            ),
            ],
          )
          ),
        ),
      );
  }
}