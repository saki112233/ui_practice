
import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      width: double.infinity,
      // color: Colors.red,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white,
              child: Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: const [
                      Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.grey,
                        size: 30,
                      ),
                      Text(
                        "like",
                        style: TextStyle(
                            color: Colors.black45, fontSize: 20),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Column(
                    children: const [
                      Icon(
                        Icons.contact_support_outlined,
                        color: Colors.red,
                        size: 30,
                      ),
                      Text(
                        "Chat",
                        style: TextStyle(
                            color: Colors.black45, fontSize: 20),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.red.shade100,
            width: 100,
            child: Column(
              children: const [
                SizedBox(
                  height: 10,
                ),
                Text(
                  "\&100",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text("old price",
                    style: TextStyle(color: Colors.white, fontSize: 20))
              ],
            ),
          ),
          Container(
            width: 130,
            color: Colors.red,
            child: Column(
              children: const [
                SizedBox(
                  height: 10,
                ),
                Text(
                  "\&90",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text("new price",
                    style: TextStyle(color: Colors.white, fontSize: 20))
              ],
            ),
          )
        ],
      ),
    );
  }
}