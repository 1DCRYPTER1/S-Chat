import 'package:chat/view/register/bloc/account_bloc.dart';
import 'package:chat/view/utils/constants.dart';
import 'package:chat/view/utils/device_config.dart';
import 'package:chat/view/widgets/about.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page_transition/page_transition.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'chatbot.dart';

class PopUpMenu extends StatelessWidget {
  const PopUpMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceData = DeviceData.init(context);

    return Container(
      width: deviceData.screenHeight * 0.05,
      height: deviceData.screenHeight * 0.05,
      decoration: ShapeDecoration(
        shape: CircleBorder(),
        color: Color(0xFF20a0bf),
      ),
      child: PopupMenuButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        icon: Icon(
          Icons.menu,
          color: Colors.white,
          size: deviceData.screenWidth * 0.058,
        ),
        color: kBackgroundButtonColor,
        onSelected: (value) {
          if (value == "logout") {
            BlocProvider.of<AccountBloc>(context).add(LogOutEvent());
          } else if (value == "about"){
            Navigator.push(context, PageTransition(child: AboutUs(), type: PageTransitionType.fade));
          } else if (value == "chatbot"){
            Navigator.push(context, PageTransition(child: chatBot(), type: PageTransitionType.fade));
          }
        },
        itemBuilder: (BuildContext context) {
          return [
            PopupMenuItem<String>(
              value: "logout",
              child: Center(
                child: Text(
                  "Log out",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            PopupMenuItem<String>(
              value: "about",
              child: Center(
                child: Text(
                  "About",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            PopupMenuItem<String>(
              value: "chatbot",
              child: Center(
                child: Text(
                  "Chat Bot",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ];
        },
      ),
    );
  }
}
