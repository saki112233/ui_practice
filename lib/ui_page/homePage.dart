import 'package:flutter/material.dart';
import 'package:untitled12/ui_page/DesignPage/bottom_nav.dart';
import 'package:untitled12/ui_page/DesignPage/image_part.dart';
import 'package:untitled12/ui_page/DesignPage/more_options.dart';
import 'package:untitled12/ui_page/DesignPage/price_list.dart';

import '../environment/constant_value.dart';
import 'DesignPage/PageDetails.dart';
import 'DesignPage/ProductBanner.dart';
import 'DesignPage/price_details.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        ImagePart(
          screenHeight: screenHeight,
          image: image,
        ),
        const SizedBox(
          height: 10,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: PriceDetails(
            discountDetails: discountDetails,
            previousPrice: previousPrice,
            recentPrice: recentPrice,
          ),
        ),
        const PageDetails(),
        const SizedBox(
          height: 10,
        ),
        const ProductBanner(),
        const SizedBox(
          height: 10,
        ),
        MoreOptions(screenWidth: screenWidth, seeMore: moreOption),
        const SizedBox(
          height: 10,
        ),
        Container(
            color: Colors.white,
            height: screenHeight * 0.19,
            child: PriceList(screenWidth: screenWidth)),
        const BottomNav(
          like: like,
          oldPrice: oldPrice,
          newPrice: newPrice,
          chat: chat,
        )
      ],
    );
  }
}
