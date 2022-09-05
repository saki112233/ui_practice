
import 'package:flutter/material.dart';

class PriceDetails extends StatelessWidget {
  const PriceDetails({
    Key? key, required this.recentPrice, required this.previousPrice, required this.discountDetails,
  }) : super(key: key);
  final String recentPrice;
  final String previousPrice;
  final String discountDetails;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Row(
            children: [
              Text(
                recentPrice,
                style:  TextStyle(fontSize: 30, color: Colors.red.shade700),
              ),
              const SizedBox(width: 10,),
              Text(
                previousPrice,
                style:  TextStyle(
                    fontSize: 15,
                    decoration: TextDecoration.lineThrough,
                    color: Colors.grey.shade600),
              )
            ],
          ),
        ),
        Expanded(
          child: Text(
            discountDetails,
            style:  TextStyle(fontSize: 15, color: Colors.grey.shade600,fontWeight: FontWeight.w500),
          ),
        )
      ],
    );
  }
}