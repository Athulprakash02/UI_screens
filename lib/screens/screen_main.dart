import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:grid/screens/screen_Payments.dart';

import 'package:grid/screens/screen_accounts.dart';
import 'package:grid/screens/screen_manage.dart';
import 'package:grid/screens/screen_orders.dart';
import 'package:grid/screens/screen_products.dart';

class ScreenMain extends StatefulWidget {
   ScreenMain({super.key});

  @override
  State<ScreenMain> createState() => _ScreenMainState();
}

class _ScreenMainState extends State<ScreenMain> {
  bool _switchValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
      ),
      drawer: Drawer(
          width: double.infinity,
          child: ListView(
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(color: Colors.blue),
                child: Row(
                  children: const [
                    Icon(Icons.arrow_back),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Additional Information',
                      style: TextStyle(fontSize: 27),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.share),
                title: Text(
                  'Share Dukaan App',
                  style: TextStyle(fontSize: 20),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 15,
                ),
              ),
              const ListTile(
                leading: Icon(Icons.abc_rounded),
                title: Text(
                  'Change Language',
                  style: TextStyle(fontSize: 20),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 15,
                ),
              ),
               ListTile(
                leading: Icon(Icons.chat),
                title: Text(
                  'WhatsApp Chat Support',
                  style: TextStyle(fontSize: 20),
                  
                ),
                trailing: Switch(value: _switchValue, onChanged: (value) {
                  setState(() {
                    _switchValue = value;
                  });
                },)
              ),
              const ListTile(
                leading: Icon(Icons.lock_outlined),
                title: Text(
                  'Privacy Policy',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.star_border),
                title: Text(
                  'Rate Us',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.logout),
                title: Text(
                  'Sign Out',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          
          children: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ScreenManage(),
                  ));
                },
                child: Text('Manage Screen',style: TextStyle(fontSize: 25),)),
                TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => screenProducts(),
                  ));
                },
                child: Text('Products Screen',style: TextStyle(fontSize: 25))),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ScreenPayments(),
                  ));
                },
                child: Text('Payments Screen',style: TextStyle(fontSize: 25))),
                TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ScreenAcounts(),
                  ));
                },
                child: Text('Dukaan Premium',style: TextStyle(fontSize: 25))),
                TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ScreenOrder(),
                  ));
                },
                child: Text('Orders Screen',style: TextStyle(fontSize: 25))),
          ],
        ),
      ),
    );
  }

  
}
