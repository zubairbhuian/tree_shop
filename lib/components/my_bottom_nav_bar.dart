import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/screens/profile_screen.dart';
import 'package:plant_app/utils/app_color.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: AppColor.padding * 2,
        right: AppColor.padding * 2,
        bottom: AppColor.padding,
      ),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -10),
            blurRadius: 35,
            color: AppColor.mainColor.withOpacity(0.38),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: SvgPicture.asset("assets/icons/flower.svg"),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset("assets/icons/heart-icon.svg"),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (contex) => const ProfileScreen()));
            },
          ),
        ],
      ),
    );
  }
}
