

import 'package:flutter/material.dart';

class PageDetails extends StatelessWidget {
  const PageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: Stack(
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              maxLines: 2,
              "This is Product Description.[We alaways care about our customers]",
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 5,
            right: 100,
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.red.shade700)),
                child:  Text(
                  "data",
                  style: TextStyle(color: Colors.red.shade700),
                )),
          )
        ],
      ),
    );
  }
}