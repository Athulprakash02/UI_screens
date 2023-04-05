import 'package:flutter/material.dart';
import 'package:grid/screens/screen_orders.dart';

orderList(
    {required orderId,
    required orderDate,
    required orderPrice,
    required Image itemPic,
    required BuildContext context}) {
  return InkWell(
    onTap: () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => ScreenOrder(),));
      
    },child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [itemPic,
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(orderId,style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
              Text(orderDate)
            ],
          ),
        ),
        SizedBox(
          width: 95,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text('₹$orderPrice',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.blue),),
            
            Row(
              children: [
                Icon(Icons.circle,size: 13,color: Colors.green,),
                SizedBox(width: 2,),
                Text('Successful',style: TextStyle(fontSize: 16),),
              ],
            ),
          ],
        )
        ],
      ),
    ),
  );
}
