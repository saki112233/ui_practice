import 'package:flutter/material.dart';
import 'package:untitled12/Widgets/product_banner.dart';
import 'package:untitled12/model/list_model.dart';

import 'Widgets/price_details.dart';

class DesignContainer extends StatefulWidget {
  const DesignContainer({
    Key? key,
  }) : super(key: key);

  @override
  State<DesignContainer> createState() => _DesignContainerState();
}

class _DesignContainerState extends State<DesignContainer> {
  final FixedExtentScrollController _controller = FixedExtentScrollController();
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Expanded(
                flex: 4,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Image.asset(
                          "assets/tshirttwo.jpg",
                          width: 300,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: screenWidth*.75, top: 10),
                          child: CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: IconButton(
                                color: Colors.white,
                                onPressed: () {},
                                icon: const Icon(Icons.logout)),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: PriceDeatils(
                          newPrice: "\$ 25.5",
                          oldPrice: "\$100",
                          discount: "get new discount"),
                    ),
                    const ProductBanner(),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 5,
                        ),
                        const Expanded(
                          flex: 2,
                          child: Text(
                            "120 more options",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Expanded(
                            child: Row(
                          children: const [
                            Text(
                              "see more",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 20),
                            ),
                            Icon(
                              Icons.navigate_next_outlined,
                              color: Colors.grey,
                              size: 20,
                            )
                          ],
                        ))
                      ],
                    ),
                  ],
                )),
            Expanded(
              child: Container(
                color: Colors.white,
                height: 100,
                child: ListWheelScrollView(
                  controller: _controller,
                  itemExtent: 80,
                  magnification: 1.2,
                  diameterRatio: 0.4,
                  physics: const FixedExtentScrollPhysics(),
                  children: ListModel.listTiles.toList(), // Here listtiles is the List of Widgets.
                ),
              ),
            ),
            SizedBox(
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
            ),
          ],
        ),
      ),
    ));
  }
}


