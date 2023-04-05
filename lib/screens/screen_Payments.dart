import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:grid/functions/order_list.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ScreenPayments extends StatefulWidget {
  const ScreenPayments({super.key});

  @override
  State<ScreenPayments> createState() => _ScreenPaymentsState();
}

class _ScreenPaymentsState extends State<ScreenPayments> {
  final orderId = [
    'Order #168808',
    'Order #163243',
    'Order #121308',
    'Order #124258',
    'Order #162423',
    'Order #168767',
    'Order #163453',
    'Order #186855',
    'Order #165467',
    'Order #125324',
    'Order #198765',
    'Order #113243',
    'Order #119784',
    'Order #118478',
    'Order #168976',
  ];

  final orderDate = [
    'Jul 12, 02:06 PM',
    'Jan 15, 01:26 PM',
    'Sep 14, 11:45 PM',
    'Feb 15, 03:12 AM',
    'Apr 24, 01:06 PM',
    'Jul 18, 04:36 PM',
    'Apr 27, 01:02 AM',
    'Jun 07, 05:56 PM',
    'Apr 19, 03:26 PM',
    'Jul 09, 12:03 PM',
    'Jan 02, 11:42 PM',
    'Sep 25, 09:12 AM',
    'Jun 11, 08:11 AM',
    'Mar 12, 12:56 PM',
    'May 17, 10:14 PM',
  ];

  final orderPrice = [
    '799',
    '708.13',
    '790.17',
    '549.25',
    '559',
    '889',
    '499.10',
    '799.49',
    '599',
    '749',
    '699',
    '1123.5',
    '799',
    '790.24',
    '524.25',
  ];

  bool isVisible = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payments'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.info_outline),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            paymentTop(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  middleTexts(
                      leadingText: 'Default Method',
                      trailingText: 'Online Payments',
                      arrowIcon: const Icon(
                        Icons.keyboard_arrow_right,
                        size: 24,
                      )),
                  middleTexts(
                      leadingText: 'Payment Profile',
                      trailingText: 'Bank Account',
                      arrowIcon: const Icon(
                        Icons.keyboard_arrow_right,
                        size: 24,
                      )),
                  Container(
                    width: double.maxFinite,
                    height: 2,
                    color: Colors.black12,
                  ),
                  middleTexts(
                    leadingText: 'Payments Overview',
                    trailingText: 'Life Time',
                    arrowIcon: GestureDetector(
                      onTap: () => setState(() {
                        isVisible = !isVisible;
                      }),
                      child: Icon(
                        isVisible == true
                            ? Icons.keyboard_arrow_down
                            : Icons.keyboard_arrow_right,
                        size: 24,
                      ),
                    ),
                  ),
                  Visibility(
                      visible: isVisible,
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.orange),
                            width: 175,
                            height: 80,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'AMOUNT ON HOLD',
                                    style: TextStyle(
                                        fontSize: 17, color: Colors.white),
                                  ),
                                  Text(
                                    '₹0',
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.green),
                            width: 175,
                            height: 80,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'AMOUNT RECEIVED',
                                    style: TextStyle(
                                        fontSize: 17, color: Colors.white),
                                  ),
                                  Text(
                                    '₹36,668',
                                    style: const TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ))
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
              child: Text(
                'Transactions',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        fixedSize: const Size(100, 18),
                        foregroundColor: Colors.black,
                        backgroundColor:
                            const Color.fromARGB(227, 178, 177, 177)),
                    child: const Text(
                      'On hold',
                      style: TextStyle(fontSize: 18),
                    )),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      // fixedSize: Size(100, 18),
                      foregroundColor: const Color.fromARGB(255, 253, 252, 252),
                      backgroundColor: Colors.blue),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                    child: Text(
                      'Payouts(${orderId.length})',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        fixedSize: const Size(100, 18),
                        foregroundColor: Colors.black,
                        backgroundColor:
                            const Color.fromARGB(227, 178, 177, 177)),
                    child: const Text(
                      'Refunds',
                      style: TextStyle(fontSize: 18),
                    )),
              ],
            ),
            for (int index = 0; index < orderId.length; index++)
              orderList(
                  orderId: orderId[index],
                  orderDate: orderDate[index],
                  orderPrice: orderPrice[index],
                  itemPic: Image.asset(
                    'assets/images/orderlist$index.jpg',
                    height: 50,
                    width: 70,
                  ),
                  context: context)
          ],
        ),
      ),
    );
  }

  Widget paymentTop() {
    return SizedBox(
      width: double.infinity,
      child: Card(
        color: const Color.fromARGB(255, 246, 243, 237),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 5, 10, 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Transaction Limit',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text(
                'A free limit up to which you will receive the online  payments directly in your bank',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 10,),
              const LinearProgressIndicator(
              value: .34,
              minHeight: 5,

                
              ),
              // Slider(
              //   value: _value.toDouble(),
              //   min: 1.0,
              //   max: 50000,
              //   divisions: 50000,
              //   activeColor: Colors.blue,
              //   // label: "$_value",
              //   inactiveColor: Colors.grey,
              //   onChanged: (value) {
              //     setState(() {
              //       _value = value.round();
              //     });
              //   },
              // ),
              Text(
                '36,668 left out of ₹50,000',
                style: const TextStyle(fontSize: 20),
              ),
              ElevatedButton(
                  onPressed: () {
                    
                  },
                  child: const Text(
                    'Increase limit',
                    style: TextStyle(fontSize: 18),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  middleTexts(
      {required leadingText,
      required trailingText,
      required Widget arrowIcon}) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leadingText,
            style: const TextStyle(fontSize: 20, color: Colors.black),
          ),
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Text(
                trailingText,
                style: const TextStyle(fontSize: 17, color: Colors.grey),
              ),
              arrowIcon,
            ],
          )
        ],
      ),
    );
  }
}
