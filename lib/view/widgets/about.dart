import 'package:chat/view/utils/constants.dart';
import 'package:chat/view/utils/device_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    DeviceData deviceData = DeviceData.init(context);
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Lottie.asset(
            'assets/images/about.json',
              width: deviceData.screenWidth * 1.25
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text("This app is created by Shaun D’silva. This application enables instant messaging. "
                "This app is platform independent i.e. it can run in both android and iOS devices, and uses an internet connection for communication. "
                "Technologies used in this are Flutter, Android Studio, Lotties, bloc, firebase database and authentication. "
                "It’s easy to use and secures your privacy. With this app, keep in touch with your loved ones even from a distance apart!",
              textAlign: TextAlign.justify,
              style: TextStyle(
                decoration: TextDecoration.none, //Removed Underline
                fontFamily: "Arial Rounded",
                color: Colors.greenAccent,
                fontSize: 16,
              ),
              ),
          ),
          SizedBox(height: 20,),
          Container(
            child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/shaun.png'),
                radius: 80,
            ),
          ),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                GestureDetector(
                  onTap: () => launch('https://github.com/1DCRYPTER1'),
                  child: Image.asset('assets/images/github.png',
                  scale: 12,),
                ),
                SizedBox(width: 12,),
                GestureDetector(
                  onTap: () => launch('https://www.instagram.com/shaun.apk'),
                  child: Image.asset('assets/images/insta.png',
                  scale: 10),
                ),
                SizedBox(width: 12,),
                GestureDetector(
                  onTap: () => launch('https://www.linkedin.com/in/shaun-dsilva/'),
                  child: Image.asset('assets/images/linkedin.png',
                  scale: 11,),
                ),
                SizedBox(width: 12,),
                GestureDetector(
                  onTap: () => launch('https://twitter.com/ShaunDsilva11'),
                  child: Image.asset('assets/images/twitter.png',
                  scale:10),
                ),

            ],
          ),
        ],
      ),
    );
  }
}
