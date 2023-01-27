import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: const TextSpan(
            text: "Wallpaper",
            style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
            children: [
              TextSpan(
                text: "Guru",
                style: TextStyle(color: Colors.amberAccent, fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ]
      ),
    );
  }
}
