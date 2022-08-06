import 'package:flutter/material.dart';
import 'package:plant_app/utils/app_color.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    Key? key,
    required this.title,
    required this.country,
    required this.price,
  }) : super(key: key);

  final String title, country;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppColor.padding),
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$title\n",
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                      color: AppColor.textColor, fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: country,
                  style: TextStyle(
                    fontSize: 20,
                    color: AppColor.mainColor,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Text(
            "\$$price",
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: AppColor.mainColor),
          )
        ],
      ),
    );
  }
}
