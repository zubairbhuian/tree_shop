import 'package:flutter/material.dart';
import 'package:plant_app/components/my_bottom_nav_bar.dart';
import 'package:plant_app/utils/app_color.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
          leading: GestureDetector(
            child: Icon(
              Icons.arrow_back_ios,
              size: 15,
              color: AppColor.textColor,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            "Profile",
            style: TextStyle(color: AppColor.textColor),
          )),
      body: ListView(
        children: [
          const SizedBox(height: 45),
          Center(
            child: Stack(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: AppColor.mainColor.withOpacity(.4),
                  backgroundImage: const AssetImage('assets/images/pp.jpg'),
                ),
                Positioned(
                    bottom: 0,
                    right: 10,
                    child: CircleAvatar(
                        backgroundColor: AppColor.mainColor.withOpacity(0.3),
                        child: const Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.white,
                        ))),
              ],
            ),
          ),
          const SizedBox(height: 50),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
            decoration: BoxDecoration(
                color: AppColor.mainColor.withOpacity(.3),
                borderRadius: BorderRadius.circular(20)),
            child: ListTile(
              hoverColor: AppColor.mainColor.withOpacity(.5),
              selectedColor: AppColor.mainColor.withOpacity(.5),
              selected: true,
              leading: const Icon(Icons.person),
              title: const Text("My Account"),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 14,
              ),
              onTap: () {},
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
            decoration: BoxDecoration(
                color: AppColor.mainColor.withOpacity(.3),
                borderRadius: BorderRadius.circular(20)),
            child: ListTile(
              hoverColor: AppColor.mainColor.withOpacity(.5),
              selectedColor: AppColor.mainColor.withOpacity(.5),
              selected: true,
              leading: const Icon(Icons.notifications),
              title: const Text("Notifications"),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 14,
              ),
              onTap: () {},
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
            decoration: BoxDecoration(
                color: AppColor.mainColor.withOpacity(.3),
                borderRadius: BorderRadius.circular(20)),
            child: ListTile(
              hoverColor: AppColor.mainColor.withOpacity(.5),
              selectedColor: AppColor.mainColor.withOpacity(.5),
              selected: true,
              leading: const Icon(Icons.settings),
              title: const Text("Settings"),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 14,
              ),
              onTap: () {},
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
            decoration: BoxDecoration(
                color: AppColor.mainColor.withOpacity(.3),
                borderRadius: BorderRadius.circular(20)),
            child: ListTile(
              hoverColor: AppColor.mainColor.withOpacity(.5),
              selectedColor: AppColor.mainColor.withOpacity(.5),
              selected: true,
              leading: const Icon(Icons.help_center),
              title: const Text("Help Center"),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 14,
              ),
              onTap: () {},
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
            decoration: BoxDecoration(
                color: AppColor.mainColor.withOpacity(.3),
                borderRadius: BorderRadius.circular(20)),
            child: ListTile(
              hoverColor: AppColor.mainColor.withOpacity(.5),
              selectedColor: AppColor.mainColor.withOpacity(.5),
              selected: true,
              leading: const Icon(Icons.login_outlined),
              title: const Text("Log Out"),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 14,
              ),
              onTap: () {},
            ),
          ),
        ],
      ),
      bottomNavigationBar: const MyBottomNavBar(),
    );
  }
}
