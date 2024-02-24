import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:xthdemo/constants.dart';
import 'package:xthdemo/widgets/option_tile_widget.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          50.h.verticalSpace,
          CircleAvatar(
            radius: 70,
            backgroundColor: primaryColor,
            child: CircleAvatar(
              radius: 65,
              backgroundColor: const Color(0xff221501),
              child: Image.asset(
                "assets/icons/userIcon.png",
                scale: 1.5,
              ),
            ),
          ),
          10.h.verticalSpace,
          const Text(
            "John Doe",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          2.h.verticalSpace,
          const Text(
            "john.doe@example.com ",
            style: TextStyle(fontWeight: FontWeight.normal),
          ),
          10.h.verticalSpace,
          Container(
            decoration: BoxDecoration(
                color: primaryColor, borderRadius: BorderRadius.circular(25)),
            child: const Text(
              "Upgrade to PRO",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ).paddingSymmetric(horizontal: 35, vertical: 10),
          ),
          20.h.verticalSpace,
          const OptionTilesWidget(
              prefixIcon: Icons.privacy_tip_outlined, text: "Privacy"),
          10.h.verticalSpace,
          const OptionTilesWidget(
              prefixIcon: Icons.history, text: "Purchase History"),
          10.h.verticalSpace,
          const OptionTilesWidget(
              prefixIcon: Icons.help_outline_outlined, text: "Help & Support"),
          10.h.verticalSpace,
          const OptionTilesWidget(
              prefixIcon: Icons.settings_outlined, text: "Settings"),
          10.h.verticalSpace,
          const OptionTilesWidget(
              prefixIcon: Icons.person_add_outlined, text: "Invite a Friend"),
          10.h.verticalSpace,
          Container(
            width: 0.8.sw,
            decoration: BoxDecoration(
                color: const Color(0xff202021),
                borderRadius: BorderRadius.circular(25)),
            child: Center(
              child: const Text(
                "Logout",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ).paddingSymmetric(horizontal: 35, vertical: 10),
            ),
          ),
        ]),
      ),
    );
  }
}
