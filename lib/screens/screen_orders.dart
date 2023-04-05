import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ScreenOrder extends StatelessWidget {
  const ScreenOrder({super.key});

  final price = '₹799';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order #16880698'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(18, 15, 18, 5),
        child: ListView(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'May 31, 05:42 PM',
                  style: TextStyle(fontSize: 20),
                ),
                Wrap(
                  spacing: 10,
                  children: const [
                    Icon(
                      Icons.circle,
                      size: 21,
                      color: Color.fromARGB(255, 14, 140, 244),
                    ),
                    Text(
                      'Delivered',
                      style: TextStyle(
                          fontSize: 22,
                          color: Color.fromARGB(255, 130, 130, 130)),
                    )
                  ],
                )
              ],
            ),
            const Divider(
              thickness: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '1 ITEM',
                  style: TextStyle(
                      fontSize: 18, color: Color.fromARGB(255, 119, 117, 117)),
                ),
                TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.receipt_outlined),
                    label: const Text('RECEIPT'))
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/orderlist4.jpg',
                  width: 80,
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Explore | Men |Navy Blue',
                      style: TextStyle(fontSize: 20),
                    ),
                    const Text(
                      '1 piece',
                      style: TextStyle(
                          fontSize: 16, color: Color.fromARGB(255, 93, 91, 91)),
                    ),
                    const Text(
                      'Size: XL',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 117, 117, 117),
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Wrap(
                          spacing: 10,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(3),
                                  color:
                                      const Color.fromARGB(90, 33, 149, 243)),
                              child: const Padding(
                                padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
                                child: Text(
                                  '1',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                            ),
                            Text(
                              'x $price',
                              style: const TextStyle(fontSize: 22),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 125,
                        ),
                        Text(
                          '$price',
                          style: const TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 78, 76, 76)),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
            const Divider(
              thickness: 1,
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Item Total',
                  style: TextStyle(fontSize: 21),
                ),
                Text(
                  price,
                  style: const TextStyle(fontSize: 21),
                )
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Delivery',
                  style: TextStyle(fontSize: 21),
                ),
                Text(
                  'FREE',
                  style: TextStyle(fontSize: 21, color: Colors.green),
                )
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Grand Total',
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                ),
                Text(
                  price,
                  style: const TextStyle(
                      fontSize: 21, fontWeight: FontWeight.bold),
                )
              ],
            ),
            const Divider(
              thickness: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'CUSTOMER DETAILS',
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
                TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.share_outlined),
                    label: const Text(
                      'SHARE',
                      style: TextStyle(fontSize: 20),
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Deepa',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '+91-7829000484',
                      style: TextStyle(
                          fontSize: 20, color: Color.fromARGB(255, 89, 88, 88)),
                    )
                  ],
                ),
                Wrap(
                  spacing: 10,
                  children: [
                    const CircleAvatar(
                      child: CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.call),
                      ),
                    ),
                    Image.asset(
                      'assets/images/whatsapp.png',
                      width: 40,
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Address',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                        width: 215,
                        child: Text(
                          'D 1101 Chartered Beverly Hills ,Subramanyapura P.O',
                          style: TextStyle(fontSize: 20),
                        ))
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'City',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Banglore',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 90,
                ),
                Column(
                  children: const [
                    Text(
                      'Pincode',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '560061',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                Text(
                  'Payment',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Online',
                  style: TextStyle(fontSize: 20),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: const Color.fromARGB(75, 76, 175, 79)),
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(15, 2, 15, 2),
                    child: Text(
                      'PAID',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                ),
              ],
            ),
            const Divider(
              thickness: 1,
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [ 
                Text(
                  'ADDITIONAL INFORMATION',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'State',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text('Karnataka',style: TextStyle(fontSize: 20),),
                SizedBox(height: 20,),
                Text('Email',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                Text('greeniceaqua@gmail.com',style: TextStyle(fontSize: 20 ),)
              ],
            ) ,
           const SizedBox(height: 20,),
            Container(
              
              width: double.maxFinite,
             
              decoration: BoxDecoration(
                
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.blue,
                  width: 1)
              ),
              child: TextButton(
               
                onPressed: () {
                
              }, child: const Text('Share receipt',style: TextStyle(fontSize: 22),)),
            )
          ],
        ),
      ),
    );
  }
}
