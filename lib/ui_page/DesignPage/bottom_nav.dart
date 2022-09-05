import 'package:flutter/material.dart';
import 'package:untitled12/ui_page/widgets/reusable_icon.dart';


class BottomNav extends StatelessWidget {
  final String like;
  final String chat;
  final String oldPrice;
  final String newPrice;
  const BottomNav({
    Key? key,
    required this.like,
    required this.chat,
    required this.oldPrice,
    required this.newPrice,
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
                    width: 25,
                  ),
                  Column(
                    children: [
                      bottomIcon(
                          icon: Icons.favorite_border_outlined,
                          color: Colors.grey),
                      Text(
                        like,
                        style: TextStyle(
                            color: Colors.grey.shade700,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Column(
                    children: [
                      bottomIcon(
                          icon: Icons.contact_support_outlined,
                          color: Colors.red.shade700),
                      Text(
                        chat,
                        style: TextStyle(
                            color: Colors.grey.shade700,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
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
            color: Colors.red.shade700.withOpacity(0.5),
            width: 100,
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  oldPrice,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                const Text("old price",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500))
              ],
            ),
          ),
          Container(
            width: 130,
            color: Colors.red.shade700,
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  newPrice,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                const Text("new price",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500))
              ],
            ),
          )
        ],
      ),
    );
  }
}


