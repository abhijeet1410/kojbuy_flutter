import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

///
/// Created by Abhijeet <abhijeet@smarttersstudio.com> on 14-02-2021 at 23:44
///
class HomeButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  HomeButton({this.onPressed, this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(32),
        ),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
