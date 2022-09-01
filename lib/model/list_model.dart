import 'package:flutter/material.dart';

class ListModel {
  static List<Widget> listTiles = [
    Container(
      color: Colors.grey.shade100,
      child: ListTile(
        leading: const Text(
          'Buyer A',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.w900),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left:50.0),
          child: Row(
            children: const [
              Text("Add for"),
              Text("1",style: TextStyle(color: Colors.red),),
              Text("Person")
            ],
          ),
        ),
        subtitle: const Padding(
          padding: EdgeInsets.only(left:50.0),
          child: Text("Beautiful View..!"),
        ),
        trailing: Container(
          color: Colors.red,
          height: 40,
          width: 60,
          child: const Center(child: Text("Confirm",style: TextStyle(color: Colors.white),)),
        )
        ,
      ),
    ),
    Container(
      color: Colors.grey.shade100,
      child: ListTile(
        leading: const Text(
          'Buyer B',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.w900),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left:50.0),
          child: Row(
            children: const [
              Text("Add for"),
              Text("2",style: TextStyle(color: Colors.red),),
              Text("Person")
            ],
          ),
        ),
        subtitle: const Padding(
          padding: EdgeInsets.only(left:50.0),
          child: Text("Beautiful View..!"),
        ),
        trailing: Container(
          color: Colors.red,
          height: 40,
          width: 60,
          child: const Center(child: Text("Confirm",style: TextStyle(color: Colors.white),)),
        )
        ,
      ),
    ),
    Container(
      color: Colors.grey.shade100,
      child: ListTile(
        leading: const Text(
          'Buyer C',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.w900),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left:50.0),
          child: Row(
            children: const [
              Text("Add for"),
              Text("3",style: TextStyle(color: Colors.red),),
              Text("Person")
            ],
          ),
        ),
        subtitle: const Padding(
          padding: EdgeInsets.only(left:50.0),
          child: Text("Beautiful View..!"),
        ),
        trailing: Container(
          color: Colors.red,
          height: 40,
          width: 60,
          child: const Center(child: Text("Confirm",style: TextStyle(color: Colors.white),)),
        )
        ,
      ),
    ),
    Container(
      color: Colors.grey.shade100,
      child: ListTile(
        leading: const Text(
          'Buyer D',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.w900),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left:50.0),
          child: Row(
            children: const [
              Text("Add for"),
              Text("4",style: TextStyle(color: Colors.red),),
              Text("Person")
            ],
          ),
        ),
        subtitle: const Padding(
          padding: EdgeInsets.only(left:50.0),
          child: Text("Beautiful View..!"),
        ),
        trailing: Container(
          color: Colors.red,
          height: 40,
          width: 60,
          child: const Center(child: Text("Confirm",style: TextStyle(color: Colors.white),)),
        )
        ,
      ),
    ),
    Container(
      color: Colors.grey.shade100,
      child: ListTile(
        leading: const Text(
          'Buyer E',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.w900),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left:50.0),
          child: Row(
            children: const [
              Text("Add for"),
              Text("5",style: TextStyle(color: Colors.red),),
              Text("Person")
            ],
          ),
        ),
        subtitle: const Padding(
          padding: EdgeInsets.only(left:50.0),
          child: Text("Beautiful View..!"),
        ),
        trailing: Container(
          color: Colors.red,
          height: 40,
          width: 60,
          child: const Center(child: Text("Confirm",style: TextStyle(color: Colors.white),)),
        )
        ,
      ),
    ),
    Container(
      color: Colors.grey.shade100,
      child: ListTile(
        leading: const Text(
          'Buyer F',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.w900),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left:50.0),
          child: Row(
            children: const [
              Text("Add for"),
              Text("6",style: TextStyle(color: Colors.red),),
              Text("Person")
            ],
          ),
        ),
        subtitle: const Padding(
          padding: EdgeInsets.only(left:50.0),
          child: Text("Beautiful View..!"),
        ),
        trailing: Container(
          color: Colors.red,
          height: 40,
          width: 60,
          child: const Center(child: Text("Confirm",style: TextStyle(color: Colors.white),)),
        )
        ,
      ),
    ),
    Container(
      color: Colors.grey.shade100,
      child: ListTile(
        leading: const Text(
          'Buyer G',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.w900),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left:50.0),
          child: Row(
            children: const [
              Text("Add for"),
              Text("7",style: TextStyle(color: Colors.red),),
              Text("Person")
            ],
          ),
        ),
        subtitle: const Padding(
          padding: EdgeInsets.only(left:50.0),
          child: Text("Beautiful View..!"),
        ),
        trailing: Container(
          color: Colors.red,
          height: 40,
          width: 60,
          child: const Center(child: Text("Confirm",style: TextStyle(color: Colors.white),)),
        )
        ,
      ),
    ),
  ];
}
