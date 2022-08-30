import 'package:flutter/material.dart';
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
                          padding: EdgeInsets.only(left: 320, top: 10),
                          child: CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: IconButton(
                                color: Colors.white,
                                onPressed: () {},
                                icon: Icon(Icons.logout)),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: PriceDeatils(
                          newPrice: "\$ 25.5",
                          oldPrice: "\$100",
                          discount: "get new discount"),
                    ),
                    Container(
                      color: Colors.pink.shade100,
                      height: MediaQuery.of(context).size.height * .1,
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              CircleAvatar(
                                child: Icon(
                                  Icons.backpack,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                backgroundColor: Colors.pinkAccent,
                                radius: 15,
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
                                  children: [
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
                              Expanded(
                                child: Icon(
                                  Icons.navigate_next_outlined,
                                  color: Colors.grey,
                                ),
                                flex: 1,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            "120 more options",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Expanded(
                            child: Row(
                          children: [
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
                child: ListWheelScrollView(
                  controller: _controller,
                  itemExtent: 80,
                  magnification: 1.2,

                  physics: FixedExtentScrollPhysics(),
                  children: ListModel.listTiles.toList(), // Here listtiles is the List of Widgets.
                ),
              ),
            ),
            Container(
              height: 65,
              width: double.infinity,
              color: Colors.red,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.white,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: [
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
                          SizedBox(
                            width: 40,
                          ),
                          Column(
                            children: [
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
                          SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                    ),
                    flex: 1,
                  ),
                  Container(
                    color: Colors.red.shade100,
                    width: 100,
                    child: Column(
                      children: [
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
                      children: [
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
