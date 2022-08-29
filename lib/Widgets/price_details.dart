
import 'package:flutter/material.dart';

class PriceDeatils extends StatelessWidget {
  final String oldPrice;
  final String newPrice;
  final String discount;
  const PriceDeatils({
    Key? key, required this.oldPrice, required this.newPrice, required this.discount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Text(
                    newPrice,
                    style: TextStyle(fontSize: 30, color: Colors.red),
                  ),
                  SizedBox(width: 10,),
                  Text(
                    oldPrice,
                    style: TextStyle(
                        fontSize: 15,
                        decoration: TextDecoration.lineThrough,
                        color: Colors.grey),
                  )
                ],
              ),
              flex: 2,
            ),
            Expanded(
              child: Text(
                discount,
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            )
          ],
        ),
        Container(
          height: 55,
          child: Stack(
            children: [
              Align(
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
                        border: Border.all(color: Colors.red)),
                    child: Text(
                      "data",
                      style: TextStyle(color: Colors.red),
                    )),
              )
            ],
          ),
        ),
      ],
    );
  }
}





