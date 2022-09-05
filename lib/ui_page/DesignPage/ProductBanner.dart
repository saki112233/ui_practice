
import 'package:flutter/material.dart';
import 'package:untitled12/ui_page/widgets/reusable_icon.dart';


class ProductBanner extends StatelessWidget {
  const ProductBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red.shade100.withOpacity(0.3),
      height: MediaQuery.of(context).size.height * .1,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              circleIcon(color: Colors.pink.shade300,icon: Icons.backpack),
              const SizedBox(
                width: 5,
              ),
              Text(
                "Item Description",
                style: bannerTextStyle(color: Colors.red.shade300, size: 20),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                "New Arrival",
                style:
                bannerTextStyle(size: 20,color: Colors.grey.shade300),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 7,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    // Icons.verified_outlined,
                   bannerIcon(icon: Icons.verified_outlined),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "verified",
                      style: bannerTextStyle(size: 15,color: Colors.pink.shade500),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    // Icons.account_circle_outlined,
                   bannerIcon(icon: Icons.account_circle_outlined),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "account",
                      style:bannerTextStyle(size: 15,color: Colors.pink.shade500),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    // Icons.info_outlined,
                    bannerIcon(icon:Icons.info_outlined ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "info",
                      style: bannerTextStyle(size: 15,color: Colors.pink.shade500),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Icon(
                  Icons.navigate_next_outlined,
                  color: Colors.grey.shade500,
                  size: 30,
                ),
              )
            ],
          )
        ],
      ),
    );
  }





}