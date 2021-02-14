import 'package:flutter/material.dart';
import 'home_button.dart';

///
/// Created by Abhijeet <abhijeet@smarttersstudio.com> on 14-02-2021 at 23:44
///
class HomeFooter extends StatelessWidget {
  final VoidCallback onPlaceOrder;
  final VoidCallback onContact;

  HomeFooter({this.onPlaceOrder, this.onContact});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        HomeButton(
          onPressed: onPlaceOrder,
          text: "Place Order",
        ),
        HomeButton(
          onPressed: onContact,
          text: "Contact",
        ),
      ],
    );
  }
}
