
import 'package:flutter/material.dart';

import '../../model/list_model.dart';

class PriceList extends StatelessWidget {
  const PriceList({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (BuildContext context,int I)=>const Divider(),
        scrollDirection: Axis.vertical,
        shrinkWrap: false,
        itemCount: ListModel.newList.length,
        itemBuilder: (BuildContext context, int index) {
          return Row(
            children: [
              const SizedBox(width: 10,),
              Expanded(
                  child: Text(ListModel.newList[index].buyer,style: const TextStyle(fontSize:19,fontWeight: FontWeight.w600),)),
              Column(
                children: [
                  Row(
                    children: [
                      Text(ListModel.newList[index].firstPart,style: const TextStyle(fontWeight: FontWeight.w600),),
                      Text(ListModel.newList[index].personNumber,style: const TextStyle(color: Colors.red),),
                      Text(ListModel.newList[index].secondPart,style: const TextStyle(fontWeight: FontWeight.w600),),
                    ],
                  ),
                  Text(ListModel.newList[index].belowPart,style: TextStyle(fontWeight: FontWeight.w600,color: Colors.grey.shade700),)
                ],
              ),
              SizedBox(width: screenWidth*0.06,),
              Container(
                height: 40,
                width: 70,
                color: Colors.red.shade700,
                child: Center(child: Text(ListModel.newList[index].button,style: const TextStyle(fontWeight: FontWeight.w600,color: Colors.white),)),
              ),
              const SizedBox(width: 20,)
            ],
          );
        });
  }
}