import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:grid/screens/screen_Payments.dart';
import 'package:grid/widgets/grid.dart';

class ScreenManage extends StatelessWidget {
  const ScreenManage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manage Store'),
        backgroundColor: Colors.blue,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 30),
        centerTitle: true,
      ),
      body: SafeArea(
        child: GridView.count(
          crossAxisCount: 2,
          padding: const EdgeInsets.all(13),
          childAspectRatio: 1.5,
          crossAxisSpacing: 5,
          mainAxisSpacing: 10,
          children: [
            viewGrid(
                txt: const Text(
                  'Marketing Designs',
                  style: TextStyle(fontSize: 25),
                ),
                addIcon: const Icon(
                  Icons.wifi,
                  size: 24,
                ),
                bgcolor: const Color.fromARGB(216, 255, 153, 0)),
            viewGrid(
                txt: const Text(
                  'Online Payments',
                  style: TextStyle(fontSize: 25),
                ),
                addIcon: const Icon(
                  Icons.currency_rupee_rounded,
                  size: 24,
                ),
                bgcolor: const Color.fromARGB(199, 76, 175, 79)),
            viewGrid(
                txt: const Text(
                  'Discount Coupons',
                  style: TextStyle(fontSize: 25),
                ),
                addIcon: const Icon(
                  Icons.percent,
                  size: 24,
                ),
                bgcolor: const Color.fromARGB(145, 255, 153, 0)),
            viewGrid(
                txt: const Text(
                  'My customers',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                addIcon: const Icon(
                  Icons.people_alt_outlined,
                  size: 24,
                ),
                bgcolor: const Color.fromARGB(205, 41, 141, 223)),
            viewGrid(
                txt: const Text(
                  'Store QR Code',
                  style: TextStyle(fontSize: 25),
                ),
                addIcon: const Icon(
                  Icons.qr_code_scanner_outlined,
                  size: 24,
                ),
                bgcolor: const Color.fromARGB(182, 158, 158, 158)),
            viewGrid(
                txt: const Text(
                  'Extra Charges',
                  style: TextStyle(fontSize: 25),
                ),
                addIcon: const Icon(
                  Icons.request_page_outlined,
                  size: 24,
                ),
                bgcolor: const Color.fromARGB(177, 63, 81, 181)),
            viewGrid(
                txt: const Text(
                  'Order Form',
                  style: TextStyle(fontSize: 25),
                ),
                addIcon: const Icon(
                  Icons.format_align_left_outlined,
                  size: 20,
                ),
                bgcolor: const Color.fromARGB(183, 155, 39, 176)),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // animationDuration: Duration(milliseconds: 300),
        // color: Colors.black,
        // backgroundColor: Colors.black,

        currentIndex: 3,

        items: const [
          // Icon(
          //   Icons.home,
          //   color: Colors.blue,
          //   size: 30,

          // ),
          // Icon(
          //   Icons.paid,
          //   color: Colors.blue,
          //   size: 30,

          // ),
          // Icon(
          //   Icons.grid_view_outlined,
          //   color: Colors.blue,
          //   size: 30,
          // ),
          // Icon(
          //   Icons.layers,
          //   color: Colors.blue,
          //   size: 30,
          // ),
          // Icon(
          //   Icons.person,
          //   color: Colors.blue,
          //   size: 30,

          // ),

          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view_rounded),
            label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.layers),
            label: 'Manage',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
        showUnselectedLabels: true,

        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
