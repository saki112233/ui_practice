

import 'package:flutter/material.dart';

class ProductBanner extends StatelessWidget {
  const ProductBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink.shade100,
      height: MediaQuery.of(context).size.height * .1,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: const [
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                backgroundColor: Colors.pinkAccent,
                radius: 15,
                child: Icon(
                  Icons.backpack,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "Item Description",
                style: TextStyle(
                    color: Colors.pinkAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "New Arrival",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 4,
                child: Row(
                  children: const [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.verified_outlined,
                      color: Colors.pinkAccent,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "verified",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.account_circle_outlined,
                      color: Colors.pinkAccent,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "account",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.info_outlined,
                      color: Colors.pinkAccent,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "info",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
              ),
              const Expanded(
                flex: 1,
                child: Icon(
                  Icons.navigate_next_outlined,
                  color: Colors.grey,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}