import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

///
/// Created by Abhijeet <abhijeet@smarttersstudio.com> on 14-02-2021 at 23:44
///
class ReviewTile extends StatelessWidget {
  final int rating;
  final String review;

  ReviewTile(this.rating, this.review);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: List.generate(
              rating,
              (index) => SvgPicture.asset(
                    'assets/icons/star.svg',
                    height: 12,
                    width: 12,
                    color: Colors.blue,
                  )),
        ),
        SizedBox(
          height: 3,
        ),
        Text(review)
      ],
    );
  }
}
