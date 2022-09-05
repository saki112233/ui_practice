
import 'package:flutter/material.dart';

class MoreOptions extends StatelessWidget {
  const MoreOptions({
    Key? key,
    required this.screenWidth, required this.seeMore,
  }) : super(key: key);

  final double screenWidth;
  final String seeMore;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 5,
        ),
        Text(
          seeMore,
          style: const TextStyle(fontSize: 20),
        ),
        SizedBox(
          width: screenWidth * 0.28,
        ),
        Row(
          children: const [
            Text(
              "see more",
              style:
              TextStyle(color: Colors.grey, fontSize: 20),
            ),
            Align(
              alignment: Alignment.center,
              child: Icon(
                Icons.navigate_next_outlined,
                color: Colors.grey,
                size: 30,
              ),
            )
          ],
        )
      ],
    );
  }
}