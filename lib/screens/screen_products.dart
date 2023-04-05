
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:grid/screens/screen_orders.dart';

class screenProducts extends StatefulWidget {
  screenProducts({super.key});

  @override
  State<screenProducts> createState() => _screenProductsState();
}

class _screenProductsState extends State<screenProducts> {

  
  
  final items = [
    'Couch Potato | Women',
    'Couch Potato | Men | Blue',
    'Mug | Explore',
    'Combo Blahst 1 | Pack',
    'Mug | Orchard',
    'Combo Blahst 2 | Pack',
    'I See Combo Pack',
    'Kids Combo Blahst'
  ];

  final price = ['799', '799', '399', '699', '449', '599', '1,299', '1,199'];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Catalogue'),
          actions: [
            IconButton(onPressed: () {
            
          }, icon: const Icon(Icons.search)),
          ],
          centerTitle: true,
          bottom: const TabBar(tabs:  [
            Tab(
              text: 'Products',
            ),
            Tab(
              text: 'Categories',
            ),
          ]),
        ),
        body: TabBarView( 
          children: [
            SafeArea(
                child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView.builder(
                itemBuilder: (context, index) => viewCard(index: index),
                itemCount: items.length,
              ),
            )),
            const Text(''),
          ],
        ),
      ),
    );
  }

  viewCard({required int index}) {
    return Container(
      height: 130,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            ListTile(
             
              leading: ClipRRect(
                borderRadius: BorderRadius.zero,
                child: Image.asset('assets/images/image$index.jpg'),
              ),
              title: Text(
                items[index],
                style: const TextStyle(fontSize: 17),
              ),
              subtitle: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text('1 Piece'),
                      Text(
                        "₹${price[index]}",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 15),
                      ),
                      const Text(
                        'In Stock',
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Icon(Icons.more_vert_outlined),
                  Icon(
                    Icons.toggle_on,
                    color: Colors.blue,
                    size: 32,
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 400,
              child: Divider(
                color: Colors.black,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.share_outlined),
                SizedBox(
                  width: 30,
                ),
                Text(
                  'Share Product',
                  style: TextStyle(fontSize: 20),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
