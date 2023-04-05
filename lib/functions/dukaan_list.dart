import 'package:flutter/material.dart';

final leadIcon = [
  Icon(Icons.language),
  Icon(Icons.verified_outlined),
  Icon(Icons.computer_outlined),
  Icon(Icons.support_agent),
];

final titleName = [
  'Custom domain name',
  'Verified seller badge',
  'Dukaan for PC',
  'Priority support',
];

final subtitleName = [
  'Get your own custom domain and build your brand on the internet.',
  'Get green verified badge under your store name and build trust.',
  'Access all the exclusive premium features on Dukaan for PC.',
  'Get your questions resolved with our priority customer support.',
];

listCall({required int index}) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(14, 4, 4, 4),
    child: Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.blue,
          radius: 26,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 24,
            child: leadIcon[index],
          ),
        ),
        SizedBox(
          width: 14,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              titleName[index],
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
                width: 250,
                child: Text(
                  subtitleName[index],
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                )),
          ],
        )
      ],
    ),
  );
}

addIconExpand({required titleText, required description}) {
  return Card(
    child: ExpansionTile(
        title: Text(
      titleText,
      style: TextStyle(
        fontSize: 18,
      ),
    ),
    children: [
      ListTile(
        title: Text(description,style: TextStyle(color: Colors.grey),),
      )
    ],
    trailing: Icon(Icons.add),
    
    ),
  );
}
