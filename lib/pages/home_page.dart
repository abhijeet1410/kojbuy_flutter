import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'widgets/home_footer.dart';
import 'widgets/review_tile.dart';

///
/// Created by Abhijeet <abhijeet@smarttersstudio.com> on 13-02-2020 at 23:11
///
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 4,
        backgroundColor: Colors.white,
        title: Text(
          "KhojBuy",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              children: [
                Text(
                  "Mahamaya Store",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Electronics"),
                    Row(
                      children: [
                        Text("4.5"),
                        SizedBox(
                          width: 2,
                        ),
                        SvgPicture.asset(
                          'assets/icons/star.svg',
                          height: 12,
                          width: 12,
                          color: Colors.blue,
                        )
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Text("Budharaja"),
                    SizedBox(
                      width: 12,
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text("Map"),
                      textColor: Colors.blue,
                    ),
                  ],
                ),
                CachedNetworkImage(
                  imageUrl:
                      'https://img.freepik.com/free-photo/car-travelling-by-sunny-road_1088-51.jpg?size=626&ext=jpg',
                  errorWidget: (ctx, _, __) => SizedBox(),
                  placeholder: (ctx, _) => SizedBox(),
                  imageBuilder: (ctx, provider) => ClipRRect(
                    clipBehavior: Clip.antiAlias,
                    borderRadius: BorderRadius.circular(12),
                    child: Image(
                      image: provider,
                      height: 165,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Deals in: ",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text("all type television, washing machine and microwaves"),
                SizedBox(
                  height: 32,
                ),
                Text(
                  "Other information: ",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text("anytime service, free delivery etc."),
                SizedBox(
                  height: 36,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Check catalogue",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.blue,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Icon(Icons.arrow_forward),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Customer Reviews: ",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Add Review",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.blue,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 14,
                ),
                ListView.separated(
                    itemBuilder: (_, index) =>
                        ReviewTile(3, "Shopkeeper is very helpful"),
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    separatorBuilder: (_, index) => Divider(),
                    itemCount: 2)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: HomeFooter(
              onPlaceOrder: () {},
              onContact: () {},
            ),
          )
        ],
      ),
    );
  }
}
