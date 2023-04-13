import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final wsize = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              // width: double.infinity,
              padding: const EdgeInsets.all(20),
              // color: Colors.amber,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: wsize * 0.45,
                    child: CircleAvatar(
                      radius: wsize * 0.45 - 5,
                      backgroundImage:
                          const AssetImage('assets/images/profile_pic.jpg'),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    'James Bond',
                    style: GoogleFonts.kanit(
                      fontSize: 38,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    children: [
                      const Text(
                        'Actively looking',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      FaIcon(
                        FontAwesomeIcons.solidCircleCheck,
                        color: Colors.green[500],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          const Text('Applied'),
                          Text(
                            '98',
                            style: GoogleFonts.robotoCondensed(
                              fontSize: 32,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const Text('Reviewed'),
                          Text(
                            '27',
                            style: GoogleFonts.robotoCondensed(
                              fontSize: 32,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const Text('Contacted'),
                          Text(
                            '15',
                            style: GoogleFonts.robotoCondensed(
                              fontSize: 32,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              child: Container(
                // width: double.infinity,
                color: Colors.orange[200],
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: const [
                          Text('Complete Profile'),
                          Text('Personal | Experience | Certifications'),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () async {
                        //open linkedin profile
                        final Uri uri = Uri.parse(
                            'https://www.facebook.com/Ecneralc.Rolfalliv.05');
                        if (!await launchUrl(uri)) {
                          print('cannot launch ');
                        }
                      },
                      child: const FaIcon(FontAwesomeIcons.arrowRightLong),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    GestureDetector(
                      onTap: () async {
                        //open linkedin profile
                        final Uri uri = Uri.parse('sms:+639901231234');
                        if (!await launchUrl(uri)) {
                          print('cannot launch ');
                        }
                      },
                      child: const FaIcon(FontAwesomeIcons.phone),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
