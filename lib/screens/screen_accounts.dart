import 'package:flutter/material.dart';

import 'package:grid/functions/dukaan_list.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ScreenAcounts extends StatefulWidget {
  ScreenAcounts({super.key});

  @override
  State<ScreenAcounts> createState() => _ScreenAcountsState();
}

class _ScreenAcountsState extends State<ScreenAcounts> {
  final videoLink = 'https://youtu.be/mpzdz8-VO4A';
  late YoutubePlayerController _youtubePlayerController;

  @override
  void initState() {
    final videoId = YoutubePlayer.convertUrlToId(videoLink);
    _youtubePlayerController =
        YoutubePlayerController(initialVideoId: videoId!,
    flags: const YoutubePlayerFlags(
      autoPlay: false,
   
    
    ));
    // TODO: implement initState
    super.initState();
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
         
        title: const Text('Dukaan Premium'),
        centerTitle: true,
      ),
      body: ListView(children: [
        Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 80,
                  color: Colors.blue,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: SizedBox(
                    width: double.maxFinite,
                    height: 170,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/dukaan_logo.png',
                              width: 200,
                              height: 50,
                            ),
                            const Text(
                              'Get Dukaan Premium for just ₹4,999/year',
                              style: TextStyle(
                                fontSize: 27,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 15, right: 15),
                              child: Text(
                                'All the advanced features for scaling your business.',
                                style: TextStyle(fontSize: 18),
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: const [
                  Text(
                    'Features',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                for (int i = 0; i < 4; i++) listCall(index: i),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: const [
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    'What is Dukaan Premium?',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                height: 200,
                child: YoutubePlayer(
                  controller: _youtubePlayerController,
                  showVideoProgressIndicator: true,
                  
                ),
              ),
            ),
            const Divider(),
          ],
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
          child: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Frequently asked questions',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                addIconExpand(
                    titleText:
                        'What types of businesses can use Dukaan premium?',
                    description:
                        'Dukaan caters to a wide vareity of sellers.Be it a small grocery store or a legacy brand-anyone who wants to sell their products/services online-Dukaan is the perfect platform for you.'),
                addIconExpand(
                    titleText: 'What is your refund policy?',
                    description: 'description'),
                addIconExpand(
                    titleText:
                        'Will there be an automatic charge after the paid trail?',
                    description: 'description'),
                addIconExpand(
                    titleText: 'What payment methods do you offer?',
                    description: 'description'),
                addIconExpand(
                    titleText: 'What are the terms for the custom domain?',
                    description: 'description'),
                const Divider(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Need help? Get in touch',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 160,
                        height: 80,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(93, 158, 158, 158))),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 15, 10, 10),
                            child: Column(
                              children: const [
                                Icon(
                                  Icons.chat_bubble_outline,
                                  size: 30,
                                ),
                                Text(
                                  'Live Chat',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.grey),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      SizedBox(
                        width: 160,
                        height: 80,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(93, 158, 158, 158))),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 15, 10, 10),
                            child: Column(
                              children: [
                                const Icon(
                                  Icons.call_outlined,
                                  size: 30,
                                ),
                                const Text(
                                  'Phone Call',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.grey),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Select Domain',
                            style: TextStyle(color: Colors.blue, fontSize: 20),
                          )),
                      const SizedBox(
                        width: 22,
                      ),
                      TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.blue),
                          onPressed: () {},
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: Text(
                              'Get Premium',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
