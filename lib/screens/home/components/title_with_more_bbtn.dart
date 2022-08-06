import 'package:flutter/material.dart';
import 'package:plant_app/utils/app_color.dart';

class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);
  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppColor.padding),
      child: Row(
        children: <Widget>[
          TitleWithCustomUnderline(text: title),
          const Spacer(),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: AppColor.mainColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: press,
            child: const Text(
              "More",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: AppColor.padding / 4),
            child: Text(
              text,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: AppColor.padding / 4),
              height: 7,
              color: AppColor.mainColor.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}
