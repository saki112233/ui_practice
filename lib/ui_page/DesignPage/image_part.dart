
import 'package:flutter/material.dart';
import 'package:untitled12/ui_page/widgets/reusable_icon.dart';


class ImagePart extends StatelessWidget {
  const ImagePart({
    Key? key,
    required this.screenHeight, required this.image,
  }) : super(key: key);

  final double screenHeight;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight*0.4,
      width: double.infinity,
      color: Colors.red,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(image),
          Positioned(
            top: 10,
            right: 10,
            child: circleIcon(color:Colors.grey,icon:Icons.logout),
          ),

        ],
      ),
    );
  }
}